# PreviewGameObject
# Written by: First

extends PreviewObject

class_name PreviewGameObject

"""
	Enter desc here.
"""

#-------------------------------------------------
#      Classes
#-------------------------------------------------

#-------------------------------------------------
#      Signals
#-------------------------------------------------

#-------------------------------------------------
#      Constants
#-------------------------------------------------

#-------------------------------------------------
#      Properties
#-------------------------------------------------

#b
export (float) var obj_vector_x := BaseDataGame.MISSING_DATA

#c
export (float) var obj_vector_y := BaseDataGame.MISSING_DATA

#d
export (float) var obj_type := BaseDataGame.MISSING_DATA setget set_obj_type

#e
export (float) var obj_id := BaseDataGame.MISSING_DATA setget set_obj_id

#f
export (float) var obj_appearance := BaseDataGame.MISSING_DATA

#g
export (float) var obj_direction := BaseDataGame.MISSING_DATA

#h
export (float) var obj_timer := BaseDataGame.MISSING_DATA

#j
export (float) var obj_tex_h_offset := BaseDataGame.MISSING_DATA

#k
export (float) var obj_tex_v_offset := BaseDataGame.MISSING_DATA

#l
export (float) var obj_unknown_parameter := BaseDataGame.MISSING_DATA

#m
export (float) var obj_destination_x := BaseDataGame.MISSING_DATA

#n
export (float) var obj_destination_y := BaseDataGame.MISSING_DATA

#o
export (float) var obj_option := BaseDataGame.MISSING_DATA

#p
export (float) var obj_new_speed := BaseDataGame.MISSING_DATA

#q
export (float) var obj_new_timer_option := BaseDataGame.MISSING_DATA

#r
export (float) var obj_who_knows := BaseDataGame.MISSING_DATA

#-------------------------------------------------
#      Notifications
#-------------------------------------------------

#-------------------------------------------------
#      Virtual Methods
#-------------------------------------------------

#-------------------------------------------------
#      Override Methods
#-------------------------------------------------

#-------------------------------------------------
#      Public Methods
#-------------------------------------------------

#-------------------------------------------------
#      Connections
#-------------------------------------------------

#-------------------------------------------------
#      Private Methods
#-------------------------------------------------

func _update_obj_id_appearance():
	#Label
	if obj_id == BaseDataGame.MISSING_DATA:
		$Sprite/ObjIDLabel.text = "0"
	else:
		$Sprite/ObjIDLabel.text = str(obj_id)
	
	#Appearance
	if obj_type == BaseDataGame.MISSING_DATA:
		$Sprite.frame = 0
	else:
		$Sprite.frame = int(obj_type)
	

#-------------------------------------------------
#      Setters & Getters
#-------------------------------------------------

func set_obj_type(val):
	obj_type = float(val)
	
	_update_obj_id_appearance()

func set_obj_id(val):
	obj_id = float(val)
	
	_update_obj_id_appearance()
