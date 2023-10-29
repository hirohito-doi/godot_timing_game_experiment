GDPC                                                                                         T   res://.godot/exported/133200997/export-2bfead96d9007574604d14c2cecf10b3-comment.scn 0      P      ���>��̟*���0�    P   res://.godot/exported/133200997/export-3070c538c03ee49b7677ff960a3f5195-main.scnp      p      �7��bJ�h��6Q�Vf    X   res://.godot/exported/133200997/export-4b51eb214c1434c942cea334fd856bee-timing_bar.scn  �&            ���[����/@�ۮy0�    ,   res://.godot/global_script_class_cache.cfg  @0             ��Р�8���8~$}P�    D   res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex�
      �      �̛�*$q�*�́        res://.godot/uid_cache.bin   4      x       y���&|���$�R�&       res://comment.gd        "      I�j�:�Hh�$��<�       res://comment.tscn.remap�.      d       6�d�Nc�³�q����       res://constants.gd  �
      5       =M�yq}�[���d�i�       res://icon.svg  `0      �      C��=U���^Qu��U3       res://icon.svg.import   �      �       �u���2����6K�\�       res://main.tscn.remap   `/      a       �J�Sw� ������       res://project.binary�4      h      ���<�X-|s��       res://timing_bar.gd �      �
      ��1@z_����g��C#       res://timing_bar.tscn.remap �/      g       r�Y+:
c*$t� ��    U�Y��t7E�0extends Control

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
k���M�	O���ڗ8RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    default_base_scale    default_font    default_font_size    script 	   _bundled       Script    res://comment.gd ��������
   Texture2D    res://icon.svg �.#��s      local://Theme_3cb8y �         local://PackedScene_xtsdp �         Theme          #            PackedScene          	         names "         Comment    layout_mode    anchors_preset    anchor_left    anchor_top    anchor_right    anchor_bottom    offset_left    offset_top    offset_right    offset_bottom    grow_horizontal    grow_vertical    script    Control 	   Sprite2D 	   position    scale    texture    Frame    theme 
   ColorRect    Label !   theme_override_colors/font_color $   theme_override_font_sizes/font_size    text 	   rotation    CommentTimer    Timer    _on_comment_timer_timeout    timeout    	   variants    !                     ?     �?     H�     4�     HC     ��                       
     �A  HB
      ?   ?                          ��     H�     HB                     *�     P�     *B     PA                 �?            . . . . . .            p�     �A     �@   �I?      node_count             nodes     �   ��������       ����                                                    	      
               	      
                     ����                                       ����                                                   
         	                                ����                                                   	      
                                                     ����	                                 	      
                                     ����              conn_count             conns                                      node_paths              editable_instances              version             RSRCextends Node

enum { WAITING, BAD, GOOD, EXCELLENT }
(h��--5=GST2   �   �      ����               � �        �  RIFF�  WEBPVP8L�  /������!"2�H�$�n윦���z�x����դ�<����q����F��Z��?&,
ScI_L �;����In#Y��0�p~��Z��m[��N����R,��#"� )���d��mG�������ڶ�$�ʹ���۶�=���mϬm۶mc�9��z��T��7�m+�}�����v��ح�m�m������$$P�����එ#���=�]��SnA�VhE��*JG�
&����^x��&�+���2ε�L2�@��		��S�2A�/E���d"?���Dh�+Z�@:�Gk�FbWd�\�C�Ӷg�g�k��Vo��<c{��4�;M�,5��ٜ2�Ζ�yO�S����qZ0��s���r?I��ѷE{�4�Ζ�i� xK�U��F�Z�y�SL�)���旵�V[�-�1Z�-�1���z�Q�>�tH�0��:[RGň6�=KVv�X�6�L;�N\���J���/0u���_��U��]���ǫ)�9��������!�&�?W�VfY�2���༏��2kSi����1!��z+�F�j=�R�O�{�
ۇ�P-�������\����y;�[ ���lm�F2K�ޱ|��S��d)é�r�BTZ)e�� ��֩A�2�����X�X'�e1߬���p��-�-f�E�ˊU	^�����T�ZT�m�*a|	׫�:V���G�r+�/�T��@U�N׼�h�+	*�*sN1e�,e���nbJL<����"g=O��AL�WO!��߈Q���,ɉ'���lzJ���Q����t��9�F���A��g�B-����G�f|��x��5�'+��O��y��������F��2�����R�q�):VtI���/ʎ�UfěĲr'�g�g����5�t�ۛ�F���S�j1p�)�JD̻�ZR���Pq�r/jt�/sO�C�u����i�y�K�(Q��7őA�2���R�ͥ+lgzJ~��,eA��.���k�eQ�,l'Ɨ�2�,eaS��S�ԟe)��x��ood�d)����h��ZZ��`z�պ��;�Cr�rpi&��՜�Pf��+���:w��b�DUeZ��ڡ��iA>IN>���܋�b�O<�A���)�R�4��8+��k�Jpey��.���7ryc�!��M�a���v_��/�����'��t5`=��~	`�����p\�u����*>:|ٻ@�G�����wƝ�����K5�NZal������LH�]I'�^���+@q(�q2q+�g�}�o�����S߈:�R�݉C������?�1�.��
�ڈL�Fb%ħA ����Q���2�͍J]_�� A��Fb�����ݏ�4o��'2��F�  ڹ���W�L |����YK5�-�E�n�K�|�ɭvD=��p!V3gS��`�p|r�l	F�4�1{�V'&����|pj� ߫'ş�pdT�7`&�
�1g�����@D�˅ �x?)~83+	p �3W�w��j"�� '�J��CM�+ �Ĝ��"���4� ����nΟ	�0C���q'�&5.��z@�S1l5Z��]�~L�L"�"�VS��8w.����H�B|���K(�}
r%Vk$f�����8�ڹ���R�dϝx/@�_�k'�8���E���r��D���K�z3�^���Vw��ZEl%~�Vc���R� �Xk[�3��B��Ğ�Y��A`_��fa��D{������ @ ��dg�������Mƚ�R�`���s����>x=�����	`��s���H���/ū�R�U�g�r���/����n�;�SSup`�S��6��u���⟦;Z�AN3�|�oh�9f�Pg�����^��g�t����x��)Oq�Q�My55jF����t9����,�z�Z�����2��#�)���"�u���}'�*�>�����ǯ[����82һ�n���0�<v�ݑa}.+n��'����W:4TY�����P�ר���Cȫۿ�Ϗ��?����Ӣ�K�|y�@suyo�<�����{��x}~�����~�AN]�q�9ޝ�GG�����[�L}~�`�f%4�R!1�no���������v!�G����Qw��m���"F!9�vٿü�|j�����*��{Ew[Á��������u.+�<���awͮ�ӓ�Q �:�Vd�5*��p�ioaE��,�LjP��	a�/�˰!{g:���3`=`]�2��y`�"��N�N�p���� ��3�Z��䏔��9"�ʞ l�zP�G�ߙj��V�>���n�/��׷�G��[���\��T��Ͷh���ag?1��O��6{s{����!�1�Y�����91Qry��=����y=�ٮh;�����[�tDV5�chȃ��v�G ��T/'XX���~Q�7��+[�e��Ti@j��)��9��J�hJV�#�jk�A�1�^6���=<ԧg�B�*o�߯.��/�>W[M���I�o?V���s��|yu�xt��]�].��Yyx�w���`��C���pH��tu�w�J��#Ef�Y݆v�f5�e��8��=�٢�e��W��M9J�u�}]釧7k���:�o�����Ç����ս�r3W���7k���e�������ϛk��Ϳ�_��lu�۹�g�w��~�ߗ�/��ݩ�-�->�I�͒���A�	���ߥζ,�}�3�UbY?�Ӓ�7q�Db����>~8�]
� ^n׹�[�o���Z-�ǫ�N;U���E4=eȢ�vk��Z�Y�j���k�j1�/eȢK��J�9|�,UX65]W����lQ-�"`�C�.~8ek�{Xy���d��<��Gf�ō�E�Ӗ�T� �g��Y�*��.͊e��"�]�d������h��ڠ����c�qV�ǷN��6�z���kD�6�L;�N\���Y�����
�O�ʨ1*]a�SN�=	fH�JN�9%'�S<C:��:`�s��~��jKEU�#i����$�K�TQD���G0H�=�� �d�-Q�H�4�5��L�r?����}��B+��,Q�yO�H�jD�4d�����0*�]�	~�ӎ�.�"����%
��d$"5zxA:�U��H���H%jس{���kW��)�	8J��v�}�rK�F�@�t)FXu����G'.X�8�KH;���[ ��Q�\�EW�ұ[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://dqggnt70h0k7o"
path="res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex"
metadata={
"vram_texture": false
}
 �O�~PHcfs�%h�RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       PackedScene    res://timing_bar.tscn B � p7"   PackedScene    res://comment.tscn �M�P��&E      local://PackedScene_ci522 A         PackedScene          	         names "         Main    Node 
   TimingBar    offset_left    offset_right    Comment    updateComment    timing_evaluated    	   variants                      y�     {C               node_count             nodes        ��������       ����                ���                                  ���                    conn_count             conns                                     node_paths              editable_instances              version             RSRCextends ColorRect

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
	$Bar.position.x = clamp(newPositionX, 0, size.x - $Bar.size.x)


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



�K��ezRSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       Script    res://timing_bar.gd ��������      local://PackedScene_iw87s          PackedScene          	         names "   "   
   TimingBar    anchor_left    anchor_right    offset_left    offset_top    offset_right    offset_bottom    grow_horizontal    color    script    goodAreaWidth    excellentAreaWidth    speed    metadata/_edit_use_anchors_ 
   ColorRect 	   GoodZone    clip_contents    layout_mode    anchors_preset    anchor_bottom    grow_vertical    pivot_offset    ExcellentZone    Bar    anchor_top    EvaluateTimer 
   wait_time 	   one_shot    Timer    BlinkTimer    PreventPressTimer    _on_evaluate_timer_timeout    timeout    _on_blink_timer_timeout    	   variants             ?     z�     �B     zC     HC         ��N?���>���>  �?                   
      �                         �?     ��
         HB     �?��N?      �?     ��     �A   ���>ƿ??���>  �?     ��     H�     �@     HB
     �@  HB)   ���Q��?)   333333�?      node_count             nodes     �   ��������       ����                                                     	      
         	      
                           ����                                                                                               ����
                                                                                   ����                                                                                                 ����                                  ����                           ����                         conn_count             conns                                            !                    node_paths              editable_instances              version             RSRC[remap]

path="res://.godot/exported/133200997/export-2bfead96d9007574604d14c2cecf10b3-comment.scn"
?*�g���G���[remap]

path="res://.godot/exported/133200997/export-3070c538c03ee49b7677ff960a3f5195-main.scn"
���%�h3lǒ�.[remap]

path="res://.godot/exported/133200997/export-4b51eb214c1434c942cea334fd856bee-timing_bar.scn"
G�����$6list=Array[Dictionary]([])
�v��"<svg height="128" width="128" xmlns="http://www.w3.org/2000/svg"><rect x="2" y="2" width="124" height="124" rx="14" fill="#363d52" stroke="#212532" stroke-width="4"/><g transform="scale(.101) translate(122 122)"><g fill="#fff"><path d="M105 673v33q407 354 814 0v-33z"/><path fill="#478cbf" d="m105 673 152 14q12 1 15 14l4 67 132 10 8-61q2-11 15-15h162q13 4 15 15l8 61 132-10 4-67q3-13 15-14l152-14V427q30-39 56-81-35-59-83-108-43 20-82 47-40-37-88-64 7-51 8-102-59-28-123-42-26 43-46 89-49-7-98 0-20-46-46-89-64 14-123 42 1 51 8 102-48 27-88 64-39-27-82-47-48 49-83 108 26 42 56 81zm0 33v39c0 276 813 276 813 0v-39l-134 12-5 69q-2 10-14 13l-162 11q-12 0-16-11l-10-65H447l-10 65q-4 11-16 11l-162-11q-12-3-14-13l-5-69z"/><path d="M483 600c3 34 55 34 58 0v-86c-3-34-55-34-58 0z"/><circle cx="725" cy="526" r="90"/><circle cx="299" cy="526" r="90"/></g><g fill="#414042"><circle cx="307" cy="532" r="60"/><circle cx="717" cy="532" r="60"/></g></g></svg>
}�;��   �M�P��&E   res://comment.tscn�.#��s   res://icon.svgG�[�_��`   res://main.tscnB � p7"   res://timing_bar.tscnA�E�-�ECFG      application/config/name$         Godot Timing Game Experiment   application/run/main_scene         res://main.tscn    application/config/features$   "         4.1    Forward Plus       application/config/icon         res://icon.svg  "   display/window/size/viewport_width      �  #   display/window/size/viewport_height      �  ���R,�