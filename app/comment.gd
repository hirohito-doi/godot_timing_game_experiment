extends Control

const Constants = preload("res://constants.gd")

const comments = {
	Constants.WAITING: ". . . . . .",
	Constants.BAD: "んっ、ゴミ！",
	Constants.GOOD: "まぁまぁやね",
	Constants.EXCELLENT: "素晴らしい！"
}

func updateComment(commentType):
	# タイマーを一度停止させる
	$CommentTimer.stop()
	
	# コメント更新し、タイマーを再開する
	$Frame/Label.text = comments[commentType]
	$CommentTimer.start()


func _on_comment_timer_timeout():
	$Frame/Label.text = comments[Constants.WAITING]
