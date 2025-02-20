# ViewportEventKeyScroller
# Written by: First

extends Control

#class_name optional

"""
	Enter desc here.
"""

#-------------------------------------------------
#      Classes
#-------------------------------------------------

#-------------------------------------------------
#      Signals
#-------------------------------------------------

signal moving(velocity)

#-------------------------------------------------
#      Constants
#-------------------------------------------------

#-------------------------------------------------
#      Properties
#-------------------------------------------------

export (float) var default_scroll_speed = 1800.0

var speed_modifier : float
var speed_process : float

#-------------------------------------------------
#      Notifications
#-------------------------------------------------

func _process(_delta: float) -> void:
	_input_process()

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

func _input_process():
	if Input.is_key_pressed(KEY_CONTROL):
		return
	
	speed_modifier = (1 + (int(Input.is_key_pressed(KEY_SHIFT))) * 2)
	speed_process = default_scroll_speed * get_process_delta_time()
	#if EditorConfig.reduced_motion:
		
	if owner.can_handle_scroll() :
		if Input.is_action_pressed("ui_left") or Input.is_key_pressed(KEY_A):
			emit_signal("moving", Vector2.LEFT * speed_process * speed_modifier)
		if Input.is_action_pressed("ui_right") or Input.is_key_pressed(KEY_D):
			emit_signal("moving", Vector2.RIGHT * speed_process * speed_modifier)
		if Input.is_action_pressed("ui_up") or Input.is_key_pressed(KEY_W):
			emit_signal("moving", Vector2.UP * speed_process * speed_modifier)
		if Input.is_action_pressed("ui_down") or Input.is_key_pressed(KEY_S):
			emit_signal("moving", Vector2.DOWN * speed_process * speed_modifier)

#-------------------------------------------------
#      Setters & Getters
#-------------------------------------------------

