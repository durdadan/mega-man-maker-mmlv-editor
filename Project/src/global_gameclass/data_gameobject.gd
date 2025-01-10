# Script_Name_Here
# Written by: 

extends BaseDataGame

class_name DataGameObject

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

#Position
export (Vector2) var pos

#b
export (float) var obj_vector_x = MISSING_DATA

#c
export (float) var obj_vector_y = MISSING_DATA

#d
export (float) var obj_type = MISSING_DATA

#e
export (float) var obj_id = MISSING_DATA

#f
export (float) var obj_appearance = MISSING_DATA

#g
export (float) var obj_direction = MISSING_DATA

#h
export (float) var obj_timer = MISSING_DATA

#j
export (float) var obj_tex_h_offset = MISSING_DATA

#k
export (float) var obj_tex_v_offset = MISSING_DATA

#l
export (float) var obj_unknown_parameter = MISSING_DATA

#m
export (float) var obj_destination_x = MISSING_DATA

#n
export (float) var obj_destination_y = MISSING_DATA

#o
export (float) var obj_option = MISSING_DATA setget set_obj_option,get_obj_option

#p
export (float) var obj_new_speed = MISSING_DATA

#q
export (float) var obj_new_timer_option = MISSING_DATA

#r
export (float) var obj_who_knows = MISSING_DATA

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

#-------------------------------------------------
#      Setters & Getters
#-------------------------------------------------

func set_obj_option(val: float) -> void:
	o = val

func get_obj_option() -> float:
	return o
