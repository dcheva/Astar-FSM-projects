GDPC                 �                                                                         P   res://.godot/exported/133200997/export-caa10c3bd03e8ed3318171f5303f6366-game.scn@      z      ظy���7&�ߦP�    T   res://.godot/exported/133200997/export-df8a808b9df1916d27e3f68ec35b0546-combo.scn   �      �      �~X_mC�eQzN
s�    P   res://.godot/exported/133200997/export-fa9c8ff5b16a5ec23280afa6577b07ee-main.scn�      D	      ��+j�b^��$/9�p�c    ,   res://.godot/global_script_class_cache.cfg  ?             ��Р�8���8~$}P�    H   res://.godot/imported/crown.png-e045c089dd74eef6efb0fe54ea72640d.ctex           �      G��iE��p^<�    H   res://.godot/imported/icon.webp-e94f9a68b0f625a567a797079e4d325f.ctex   �+             O�ޖ��g��p�       res://.godot/uid_cache.bin  PK      �       �5���g��%U#b}*       res://icon.webp 0?            vo/��ɭ�f+��3X�       res://icon.webp.import  �<      �       ��f�?����Cў:       res://img/crown.png.import  �      �       �b�a Jxf�zr��f       res://project.binary�K      �      �e�)�6���C��n       res://scene/combo.tscn.remap�=      b       @�5BjL��4A�J�­       res://scene/game.tscn.remap 0>      a       �C�M�� �=‷+2       res://scene/main.tscn.remap �>      a       ���T�q�6wF��       res://script/combo.gd         �      �S�E ����Lu��(�       res://script/game.gd�      N
      �6
 i��'Y���       res://script/main.gd0"      �	      e��ـ�N[ߞ�8��                GST2            ����                        �  RIFF�  WEBPVP8L�  /�w�6�$E�#	���<8�g��pP۶]�2Ђ��� ��؛���H���3��7� ��@���:e�8��3xAh�����A�ddI%?Z���U� ���}�}���g-T��;ݦF��M/���?~�(Th5��J$3P ������0���e���NW�2%��(! RBy�`�!)�>w@�m�fֶ�usk�8�O9����<0#t��#↎�t?�G �C \���6U�  6��]GK$���v�mc��Q����e�D�#I��m�ܔe�͐��ٶQ6��`:TY��������^�^��
+��N&jWY�r<��0�dI�ʼ�т@s�Y����� ��u�M��&�I&3�� ��|>�g ����[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://wla5cua4v3jg"
path="res://.godot/imported/crown.png-e045c089dd74eef6efb0fe54ea72640d.ctex"
metadata={
"vram_texture": false
}
                RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       Script    res://script/combo.gd ��������   PackedScene    res://scene/main.tscn ��꺓jc]      local://PackedScene_khpcb ?         PackedScene          	         names "         Combo    layout_mode    anchors_preset    anchor_right    anchor_bottom    grow_horizontal    grow_vertical    script    Control    GridContainer    columns    Main    Main2    Main3    Main4    	   variants                        �?                                     node_count             nodes     N   ��������       ����                                                          	   	   ����                                       
                 ���                          ���                          ���                          ���                         conn_count              conns               node_paths              editable_instances              version             RSRC    RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       Script    res://script/game.gd ��������      local://PackedScene_anp77          PackedScene          	         names "         Game    layout_mode    anchors_preset    anchor_right    anchor_bottom    size_flags_horizontal    size_flags_vertical    mouse_filter    script    Control    HBoxContainer    RichTextLabel    VBoxContainer    Label    text 	   ItemList    same_column_width    Action 	   disabled    Button    _on_Action_pressed    pressed    	   variants    	                     �?                         	   Players:             Do Action!       node_count             nodes     a   ��������	       ����                                                                  
   
   ����                                      ����                                 ����                                 ����                                ����                                              ����                               conn_count             conns                                      node_paths              editable_instances              version             RSRC      RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       Script    res://script/main.gd ��������   PackedScene    res://scene/game.tscn ��������      local://PackedScene_f5bcg >         PackedScene          	         names "   &      Main    layout_mode    anchors_preset    anchor_right    anchor_bottom    grow_horizontal    grow_vertical    size_flags_horizontal    size_flags_vertical    script    Control    Panel    VBoxContainer    offset_left    offset_top    offset_right    offset_bottom    HBoxContainer    Label    text 	   NameEdit    size_flags_stretch_ratio 	   LineEdit    HBoxContainer2    Host    Button    Connect    Disconnect    visible 	   Hostname    placeholder_text    Game    AcceptDialog    dialog_text    _on_Host_pressed    pressed    _on_Connect_pressed    _on_Disconnect_pressed    	   variants                        �?                            �A     ��      Name       @      A Godot User       Host       Connect to              Disconnect    
   localhost                Connection closed       node_count             nodes     �   ��������
       ����	                                                      	                        ����                                                  ����	                                                                          ����                          ����                                       ����                   	      
                    ����                          ����                                 ����                          
   
   ����                                 ����                                ����                                      ����                   	                          
   
   ����                    ���                                   ����   !                conn_count             conns               #   "              
       #   $                     #   %                    node_paths              editable_instances              version             RSRC            extends Control

var paths := []

func _enter_tree():
	for ch in $GridContainer.get_children():
		paths.append(NodePath(str(get_path()) + "/GridContainer/" + str(ch.name)))
	# Sets a dedicated Multiplayer API for each branch.
	for path in paths:
		get_tree().set_multiplayer(MultiplayerAPI.create_default_interface(), path)


func _exit_tree():
	# Clear the branch-specific Multiplayer API.
	for path in paths:
		get_tree().set_multiplayer(null, path)
            extends Control

const _crown = preload("res://img/crown.png")

@onready var _list = $HBoxContainer/VBoxContainer/ItemList
@onready var _action = $HBoxContainer/VBoxContainer/Action

const ACTIONS = ["roll", "pass"]

var _players = []
var _turn = -1

@rpc
func _log(what):
	$HBoxContainer/RichTextLabel.add_text(what + "\n")


@rpc("any_peer")
func set_player_name(p_name):
	if not is_multiplayer_authority():
		return
	var sender = multiplayer.get_remote_sender_id()
	update_player_name.rpc(sender, p_name)


@rpc("call_local")
func update_player_name(player, p_name):
	var pos = _players.find(player)
	if pos != -1:
		_list.set_item_text(pos, p_name)


@rpc("any_peer")
func request_action(action):
	if not is_multiplayer_authority():
		return
	var sender = multiplayer.get_remote_sender_id()
	if _players[_turn] != sender:
		_log.rpc("Someone is trying to cheat! %s" % str(sender))
		return
	if action not in ACTIONS:
		_log.rpc("Invalid action: %s" % action)
		return

	do_action(action)
	next_turn()


func do_action(action):
	var player_name = _list.get_item_text(_turn)
	var val = randi() % 100
	_log.rpc("%s: %ss %d" % [player_name, action, val])


@rpc("call_local")
func set_turn(turn):
	_turn = turn
	if turn >= _players.size():
		return
	for i in range(0, _players.size()):
		if i == turn:
			_list.set_item_icon(i, _crown)
		else:
			_list.set_item_icon(i, null)
	_action.disabled = _players[turn] != multiplayer.get_unique_id()


@rpc("call_local")
func del_player(id):
	var pos = _players.find(id)
	if pos == -1:
		return
	_players.remove_at(pos)
	_list.remove_item(pos)
	if _turn > pos:
		_turn -= 1
	if multiplayer.is_server():
		set_turn.rpc(_turn)


@rpc("call_local")
func add_player(id, pname=""):
	_players.append(id)
	if pname == "":
		_list.add_item("... connecting ...", null, false)
	else:
		_list.add_item(pname, null, false)


func get_player_name(pos):
	if pos < _list.get_item_count():
		return _list.get_item_text(pos)
	else:
		return "Error!"


func next_turn():
	_turn += 1
	if _turn >= _players.size():
		_turn = 0
	set_turn.rpc(_turn)


func start():
	set_turn(0)


func stop():
	_players.clear()
	_list.clear()
	_turn = 0
	_action.disabled = true


func on_peer_add(id):
	if not multiplayer.is_server():
		return
	for i in range(0, _players.size()):
		add_player.rpc_id(id, _players[i], get_player_name(i))
	add_player.rpc(id)
	set_turn.rpc_id(id, _turn)


func on_peer_del(id):
	if not multiplayer.is_server():
		return
	del_player.rpc(id)


func _on_Action_pressed():
	if multiplayer.is_server():
		if _turn != 0:
			return
		do_action("roll")
		next_turn()
	else:
		request_action.rpc_id(1, "roll")
  extends Control

const DEF_PORT = 8080
const PROTO_NAME = "ludus"

@onready var _host_btn = $Panel/VBoxContainer/HBoxContainer2/HBoxContainer/Host
@onready var _connect_btn = $Panel/VBoxContainer/HBoxContainer2/HBoxContainer/Connect
@onready var _disconnect_btn = $Panel/VBoxContainer/HBoxContainer2/HBoxContainer/Disconnect
@onready var _name_edit = $Panel/VBoxContainer/HBoxContainer/NameEdit
@onready var _host_edit = $Panel/VBoxContainer/HBoxContainer2/Hostname
@onready var _game = $Panel/VBoxContainer/Game

var peer = WebSocketMultiplayerPeer.new()


func _init():
	peer.supported_protocols = ["ludus"]


func _ready():
	multiplayer.peer_connected.connect(_peer_connected)
	multiplayer.peer_disconnected.connect(_peer_disconnected)
	multiplayer.server_disconnected.connect(_close_network)
	multiplayer.connection_failed.connect(_close_network)
	multiplayer.connected_to_server.connect(_connected)

	$AcceptDialog.get_label().horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	$AcceptDialog.get_label().vertical_alignment = VERTICAL_ALIGNMENT_CENTER
	# Set the player name according to the system username. Fallback to the path.
	if OS.has_environment("USERNAME"):
		_name_edit.text = OS.get_environment("USERNAME")
	else:
		var desktop_path = OS.get_system_dir(OS.SYSTEM_DIR_DESKTOP).replace("\\", "/").split("/")
		_name_edit.text = desktop_path[desktop_path.size() - 2]


func start_game():
	_host_btn.disabled = true
	_name_edit.editable = false
	_host_edit.editable = false
	_connect_btn.hide()
	_disconnect_btn.show()
	_game.start()


func stop_game():
	_host_btn.disabled = false
	_name_edit.editable = true
	_host_edit.editable = true
	_disconnect_btn.hide()
	_connect_btn.show()
	_game.stop()


func _close_network():
	stop_game()
	$AcceptDialog.popup_centered()
	$AcceptDialog.get_ok_button().grab_focus()
	multiplayer.multiplayer_peer = null
	peer.close()


func _connected():
	_game.set_player_name.rpc(_name_edit.text)


func _peer_connected(id):
	_game.on_peer_add(id)


func _peer_disconnected(id):
	print("Disconnected %d" % id)
	_game.on_peer_del(id)


func _on_Host_pressed():
	multiplayer.multiplayer_peer = null
	peer.create_server(DEF_PORT)
	multiplayer.multiplayer_peer = peer
	_game.add_player(1, _name_edit.text)
	start_game()


func _on_Disconnect_pressed():
	_close_network()


func _on_Connect_pressed():
	multiplayer.multiplayer_peer = null
	peer.create_client("ws://" + _host_edit.text + ":" + str(DEF_PORT))
	multiplayer.multiplayer_peer = peer
	start_game()
GST2   �   �      ����               � �        �  RIFF�  WEBPVP8L�  /�����^""""J�������WY���՝�����g���0�efffffffjzK����+�eɶ�H������ᏩQi�IY�P��	I�$G�����NeuW�9i���m���j0��.�Q6̵(5��e��P��6�$��I��>&�o����ڴ��xvw�mv���w��A'8�w��
��!5�ϓ_���%��$���ՙ�$K��-/E:ql##A���m���&	6���Ⱛ��$7�I�]Wx���7��骈�e)�bա��-�L�ܞ��Aj�J-R�W�Z�vH���=��Unu(r�Z7�tO鞶Q(�t��R2���J��(���Z6�� %3!5Z6ײ��7�*��H�P�ZuU�p�tB��J�$��-�u�X��c]h�P��O�]&��t�P屔G�J��l�cUF�x�%*�/��]	�J=���1�i��*+�V���ԃ�j�UU>s%{f���a��ժ򙍚?��OH�ˍU�R�.5���)����h;��A7��@v�Qm��*KG[!@v��N��d^_:cU����sU�H�}��r����>T�-�J�A�JH�0n!W�-�*w�7;���D�ƪlE����p��O���W�d�����ښS��է�v|�~8���2{u	����:�㵴�^�]G! ���W����N���<33;s�D-����cj���g�v��hUG��A�� t�����Z��� �������  �˾j����:��h�^&G�Ɗ�{��5�]S�&�����n���Κ)2 ��6���  3E��I7���c2*O��7r�{��4�yW�-�K��W���Jf �j��A�  ų�0(��۲���C k��,�^|  �ؖ/��S�� �#��: \YNN*_S�k �{��j�� (4g���M�0 �p*��N�5�Pd͜Q�� �ݵ���5 P`-Rg�4[ ��%<V7�Cff33{3:��� ��-oS��  �wm5c�  ([<�� �|s�)[ ��5���& �~�J���DTP&��;���/ 0؄Vб�5;7�����i��T����"Q�yW�!-����ٹ -��j�O	 б=I�]`� P}J���� �A�i�m ��2���� ái8t @Fn��aR �Ċ�L, �0)ͷ]rh���7�q-r�� �D��2 ^+}-r�����&�.���.��p��@~�������9*`�G�H�Q	`9*����)���n,�B\���E�915n��ws2�W�  ^���������U  XQ�dX3����lbjx>s+*��&�3]񧡓����I��  ��"��-uv��v, �Z$�/�)9+~Z�k�H# �e7�ȩ�������~D �=|  �WJ��5���_�R  `��W���_?�*^lB@@p��${���Y��/\�w�z��Ӏ@�C�W���R�x����<����qh~��劀`r��~�M�����9����[�=ς�  �E�<�J�ݤ���" ��<s^�_�w�w���Ea��w��Ƚ:���,�g��ө}�ձ�]���ݟ{�tj�G�Y�8���<�w��̵�+�+���q����!I���ajj\�]E`�D~�O���쐨O�i$�%�̳����������*�懯#����,�r�vF@09�"��L�$N�-�붳@Vy6I�������!a9z@@0Ic�gal
'�[k~H��� �p��Yg��!i߬�`�GF@@p�w)s�w�#<��[��N���.������G@�����iK����G�t��bE@��kgiW����f���Y�������o"���#���u�oir�oC����(ƺ3���ɡ�Ejx+���	�Ͻ�]�J��H�{�$��'AzޞcUU:y�v&+��.=�-w��^���"1��?c�����_�%�t1��/c�A�f<*�6����!��W��6��T����K�b���W��s-T����/_zS�y�U��o��K�
�e��)��MV��Ɔ�*��iЁ��9�
��V+��cԿ-�Z�Ҿ9��`v�;@�L
	���s�N���
¤�5 �j���i�|����.T�Pj������W�sd?�n�F�Ƨ�L�e�,  8-T�P�2�À�9|�n��[��Eb�zbxZ�    w�[Bbk�L!1B�@ ����P�OŞC�b �> @'3�0aMb����  �`�P���@�',�b k�*W=`���M�9  ��G+hY_�:���������К��&t�O 7��iY_�`�m�x�Ԅ ^xu�^x5�	!% ̀�ZA�׃�B�@�s�"�. �
a�V�7^�. � �h:G�h:V��AL�x������5�Y(�q!�`+q�?.��	�8.��Pk��x��n����!F_����I��|D��`�ʨt�LT�e
  �WB��j �2���ш���2���t�ʁ  ��2�ʹ�5zm>4  x��!{��R%� ��r'���#@�;Y}�x�J�!{�\R��  ���Y�����^����y�\=JH�7�Y�izI����9��3�i�o��]N���4a���`�m:�����P��"�&�������Y�ݹ�f3��d/v��4�ƛ�F���lw�6kb�M'���;^#h��_j�  �q׊4�y*�n��؝k���YS�����Zl�To?��u��Ⱦ��SE������kii��u�Ƀ�xɃo��(N�� �D�����78@��U���εe}�}7:���5!O��r6 n+g�3z�kB��~8t��Z��s�\��%�7��Bk�YS�}�;WW��אG� �d��l�5 �Js�sm��6k*�㎄�&���� @Hót�#�t�yB ���m�9��  �/�t>��K�g�٬��g߱S�#�e  ��;d�q�<=  s���+�5z�R  P��!��  �>��ы�3W�U���  ��L7�L���Jf�f|hiƇ)�M�Bka8�m6 �/��K �|����6f��T�����6���; �*�k�* ���N�TV���C���6Z�� xq	ũ�K��^Ź��S�����"�}'����s& P*ãT p&���S���+�`(�T�a/�
 ��KŹ9 �mF�1��
�ɨ�����	 ���g���� �-G�[��rE����؞x:�'.��S�qg9�M-_ �W���1
����=�H�����fM����\�εmsV�3���]����&�7��J�͇V�8�njۜ�e���fM���f��4U�/�I��A �b�[�ԯX @�M4"��� ������f%����� ��/�I��^�>�>�Z]����b��Ղ������eAT���	�g׳dң�����c'ƪ *y�nA@@��vrl�K���	�5ۙ�*�j^�]|��~�+N������+cU ��jE@@��k���b�f���=����������B��W+q���Gs����sD ���g�
�����^z�XXf����=�����e����©�|Wm�L��6�wS>�	��Ѿ/�	���ظ�z1ς�*!��Z~�����'����r��J����Z��E� ̫G7؄!��
�oz*)ZחBs�М[7���X�i�Ԑf���DN���Tj�EE����|��dY��X��Yst��s�[ߵ;z�̧<����.*r�U+J/����Z Z���4r���uv����l���}"��OmA�s�;׾�8�4���=�Q�Ǌ]�8q<Թy�SG���z�(7Ϗ5���y�o��Yƣ�`񡣳��G�A���b��j�!Zl���c���G��2U�}�Y��4���8��Q�Giff/�A��_������U�Ҵ��J��+�H�*�B��\i� �R	�[�G�+��H_*}$��˕�t�J��w�h+�d��L�~�eѲo����U�S˾�,]��T#_0.G����TS(�
�tU��"��H�=ˏaϐ"@ZJ�@
��).��`�*�#�R)�R ��(�z*���蓌x�#^�I�"���'!"�	R�/�G�ha�90օF�ȼ)�jm�X(��Ax�*�`fzG�*�<�<ma� �B�搚܀�h�Ra��?,Z-K��ӡ�N9�I�����Ү����[t(�ݢʴ����v�Ԧ�*�H퐾�s{F�)d�:{����[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://bwq361b5s0m0"
path="res://.godot/imported/icon.webp-e94f9a68b0f625a567a797079e4d325f.ctex"
metadata={
"vram_texture": false
}
                [remap]

path="res://.godot/exported/133200997/export-df8a808b9df1916d27e3f68ec35b0546-combo.scn"
              [remap]

path="res://.godot/exported/133200997/export-caa10c3bd03e8ed3318171f5303f6366-game.scn"
               [remap]

path="res://.godot/exported/133200997/export-fa9c8ff5b16a5ec23280afa6577b07ee-main.scn"
               list=Array[Dictionary]([])
     RIFF  WEBPVP8L  /���m$���=�������}�;�^�O���w�4���]���=߮LP,ь�2�f-ݬ�3�4��
{Jo7�t�+�>����r��߿8�m۶ڶm۶m�f��}r�٣�NO�س5����x����\y�n����U�i�l+�.�_R���+����ȶմ��lt$��5���IR$�_�a&_ W EV��H�\vw��p�"w	�^��D� /����ٞE��w�������Ƶ��p�r�mI�O�����}�F���������ut[۶���Ԁ�!]Xc��S�����l7nI5���1�R�����rO�sQ��l��1ŷ�Q�λP)�kn��o!���3L��[᪇J��X�6_G�%�B0ǜ~"��4�(�SN�\vj����n8"P�K���K�r�O�aSu�C{����j��������ʿ�T�N8�F��G��g�@@��3�\�z ��K��<�`�Rm,��ZDRY��)IĊ��*�TO{�H�=�8)�F��"��-�k�z�s6��F:��%�M�;���fY�6��Q��&��pJ׻�
���d2y��l�sjA���{�sYS$���"�n  �qY�@�؉$�ldf�,|r��C)G`�5���\�N!@��f�C{J�:������ F�e;��w�v8���Yx����
 L�X%���d:}
 f*ҝ�*�[�����U�HC���|�����nK�����Ӣ� Ɣe��)���+�!��Y��;�5�Px=j��E=k	����������^���hRV~M�
zF���p�S̀�A�Ť�\M� �mf�>�en��Ž	U3�e�9�=]#���n����o��[󵁿 ��.��o{#��
�V�[,Fb�մ�J(~�ݸ�L��������<�%����3> V��roS�`���a�d���AK,֫f�}Z�A��a�j6AǷ��3�@5�z5��L��z+o��+����a���Xʔ �F����J�E�U]ğF��#p[+� ]y-�� 	{tv<��-r5�* �i�l�G-hj���&i��Z��u��.x�\��5��%���<�E3��{�WO3��\��KK�[�6x��f
�XE :0��(K��ָq�چ�`�Ȁ���T����2��_��<+͕ܧ��w�U��mR�0�*��mI� �֮v�ioKr��g�ݗ=����#�i����o����#
��Rh��M)�'/��皮=}ۆ4�w�ڲ�W��ڳ�?��Oe(6Xh5i%�����l�$B�ߤm-$�4� ;�i3��٪�
�_lV�XA�&��-\�L:�� @��u�
���i��by[�����6����J��i'��?>T��k�GL,����/�G�&��Q�Bߨ�SH_b��w5�� PU 殕pݯ�	��H�骦�k����N�.�
�g��r߿��B�����!�I�=�b�%�'�=��Jr���i�����-��v��:u������b���d�5����6\�����J{�`���/ 0���7��� ��J�)�Ҽ@���_�o�,X��g���xv趕�v��$�� �y���2��#03�G9��tI��sh�XJ���Nlh���|-�s_�� �_��'00O�4g	�r B�P��V�y��k����Poݿ�t%$���'-�� �߈�a-�}����Vd�UPl3 ���eA�e�` J�;D$@���<��H �PA4�0H���F��� <Êe��3D������P�iK��~#U�+�a�
*_n�}h�F ��P_�s*X�5���)�_	`��`�
n������"g[H��;z��~���~��tI�V�4�T�e( �:8���<5 ����P�2��1�H��Ќٟ��u7��jE�nSFC��К��҆��B؟g�h3����y������ ���
�u���[<��D�����������J���e|.����,��Oז����im1�
-ǚ�s���7����'�����Xۧ�����̖Ot�������)-s�����P��|��������M^g�`H5� �B8N��$>z���iF� ���p����Ԯ��7u|{�S���#
�az��Y��lS�]j��vW��=*��}Uoך�so��N�M���d'<c��+���G~���=>!ĀɐT��0	�w�+kL�_�@�`�`���	�~f�v.ȗ�RrL7���؀�<|Ŷ��f�� l5\����ӷ�����`�M]`���n�$1�}�L�vu	�w�;{_ ����_��E�A��	�b�|_�	�J���KyJ'
ڑ���b�g��ަ���_�˳0<�F6B��Q��:1x�V��T�乚{]��O����l�D[p%����ap�	�3MPa��0�f�ǖ�ga��CP���g�\@�C����j�y?�����6�;Nʜd����g�#�����0~��W�3Y�%w�V�/ ��~�ܤ�`|��U��44*�W�cI;Q��z_u<�
���(y� �����?0�@�I�{(�h`P,��7yP"�b��`�p��!�X����@��X2w�/4�tI뾎��k��Y��^r�����@��Z6w�!�ty׹f��ߴ��Z�~�S�X���%g���� �i,��d���I$6+K fHUd3�Vt=D���'�h��ӕ�oY�!p�x����N�,o��:=6��Uu�j�]mL��}��7Ѝ~R�CWp9�Sp5}��c~ `P�R��Q���K_+�4AФ&��f�������#��
Ħ��)���V�/q�J̝d�	��c$AR�%}���:�}
��F&:��������|��Ŷl�;��K�}���ITB��j�� �$���my�<`���=�������E��ݏk���B�+���*�(��z��h��v���9ȕ���7�UbLy���6�J���>W_�'ώ�{];#��J�Tw�nH���y�O�������            ��r�X   res://scene/combo.tscn��꺓jc]   res://scene/main.tscn%�yj�X�   res://icon.webp�=��/ξ   res://img/crown.png               ECFG
      application/config/name$         WebSocket Multiplayer Demo     application/config/description`      X   This is a sample showing how the use WebSockets along with the Multiplayer API in Godot.   application/config/tags0   "         demo       network 	   official       application/run/main_scene          res://scene/combo.tscn     application/config/features   "         4.2    application/config/icon         res://icon.webp    display/window/stretch/mode         canvas_items   display/window/stretch/aspect         expand  #   rendering/renderer/rendering_method         gl_compatibility*   rendering/renderer/rendering_method.mobile         gl_compatibility           