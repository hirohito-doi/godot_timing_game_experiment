extends ColorRect

const Constants = preload("res://constants.gd")

signal timing_evaluated(point)

# Goodエリアの広さ %表記
@export var goodAreaWidth:int
# Excelentエリアの広さ %表記
@export var excellentAreaWidth:int

# バーの移動スピード
@export var speed = 100

# バーのx座標の最大値
var maxPos

# バーの移動方向 1: 右, -1: 左
var direction = 1

func _ready():
	maxPos = size.x - $Bar.size.x
	
	# 各エリアのサイズを設定する
	var middlePosition = size.x / 2
	$GoodZone.size.x = size.x * (float(goodAreaWidth) / 100)
	$GoodZone.position.x = middlePosition - ($GoodZone.size.x / 2)
	$ExcellentZone.size.x = size.x * (float(excellentAreaWidth) / 100)
	$ExcellentZone.position.x = middlePosition - ($ExcellentZone.size.x / 2)


func _process(delta):
	# 評価中は何もしない
	if not $EvaluateTimer.is_stopped():
		return
	
	# 通常の処理
	# バーの移動方向調整
	if $Bar.position.x <= 0:
		direction = 1
	if maxPos <= $Bar.position.x:
		direction = -1
	
	# バーを移動させる
	var newPositionX =  ($Bar.position.x + speed * delta * direction)
	$Bar.position.x = clamp(newPositionX, 0, maxPos)


func _input(event):
	# 評価中・入力受付不能時間は何も入力を受け付けない
	# またマウスの移動ではバーを止めない
	if (
			not $EvaluateTimer.is_stopped()
			or not $PreventPressTimer.is_stopped() 
			or event is InputEventMouseMotion
	):
		return
	
	# 評価処理実行
	$EvaluateTimer.start()
	$BlinkTimer.start()
	timing_evaluated.emit(checkStopResult())


# バーを止めた位置を評価する
func checkStopResult():
	# 各要素の左端・右端の位置
	var barEdge = calcRectEdgePosition($Bar)
	var excellentZoneEdge = calcRectEdgePosition($ExcellentZone)
	var goodZoneEdge = calcRectEdgePosition($GoodZone)
	
	# excellent領域内
	if barEdge.right >= excellentZoneEdge.left and barEdge.left <= excellentZoneEdge.right:
		return Constants.EXCELLENT
	
	# good領域内
	if barEdge.right >= goodZoneEdge.left and barEdge.left <= goodZoneEdge.right:
		return Constants.GOOD
	
	# それ以外(bad)
	return Constants.BAD
	

# バー・エリア左端と右端の位置を計算する
func calcRectEdgePosition(node):
	return {"left": node.position.x, "right": node.position.x + node.size.x}

# 評価終了
func _on_evaluate_timer_timeout():
	# バーを通常の表示に戻す
	$BlinkTimer.stop()
	$Bar.color = Color(Color.WHITE)
	
	# 評価を終了する
	$EvaluateTimer.stop()
	
	# 評価終了後、一定時間はバーを止められないようにする
	$PreventPressTimer.start()


# バーを点滅させる
func _on_blink_timer_timeout():
	if $Bar.color != Color(Color.WHITE):
		$Bar.color = Color(Color.WHITE)
	else:
		$Bar.color = Color(Color.BLACK, 0.4)



