# MainCamera
# Written by: First 

extends Camera2D

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

#-------------------------------------------------
#      Constants
#-------------------------------------------------

const MIN_ZOOM = 0.1125
const MAX_ZOOM = 16.0
const NORMAL_ZOOM = 1
const ZOOM_CHANGE = 0.5
const ZOOM_CHANGE_BELOW_NORMAL = 0.25
const MINI_ZOOM_CHANGE = 0.2
const MINI_ZOOM_CHANGE_BELOW_NORMAL = 0.05

#-------------------------------------------------
#      Properties
#-------------------------------------------------

onready var tween = $Tween

var current_zoom := Vector2(1, 1)

#-------------------------------------------------
#      Notifications
#-------------------------------------------------

func _process(_delta: float) -> void:
	_clamp_position_within_limit()
	_set_smoothness_from_config()

#-------------------------------------------------
#      Virtual Methods
#-------------------------------------------------

#-------------------------------------------------
#      Override Methods
#-------------------------------------------------

#-------------------------------------------------
#      Public Methods
#-------------------------------------------------

func zoom_in():
	if current_zoom.x <= MIN_ZOOM:
		return 
	
	current_zoom /= 1.5
	_tween_zoom()

func zoom_out():
	if current_zoom.x >= MAX_ZOOM:
		return 
	
	current_zoom *= 1.5
	_tween_zoom()

func zoom_in_mini(mouse_position: Vector2):
	if current_zoom.x <= MIN_ZOOM:
		return
	
	current_zoom /= 1.1
	_tween_position_and_zoom(mouse_position)

func zoom_out_mini(mouse_position: Vector2):
	if current_zoom.x >= MAX_ZOOM:
		return
	
	current_zoom *= 1.1
	_tween_position_and_zoom(mouse_position)

func reset_zoom():
	current_zoom = Vector2.ONE
	_tween_zoom()

#-------------------------------------------------
#      Connections
#-------------------------------------------------

#-------------------------------------------------
#      Private Methods
#-------------------------------------------------

func _clamp_position_within_limit():
	var window_size_half : Vector2 = OS.window_size / 2
	
	position.x = clamp(
		position.x,
		limit_left + (window_size_half.x * zoom.x),
		limit_right - (window_size_half.x * zoom.x)
	)
	position.y = clamp(
		position.y,
		limit_top + (window_size_half.y * zoom.y),
		limit_bottom - (window_size_half.y * zoom.y)
	)

func _tween_position_and_zoom(mouse_position: Vector2) -> void:
	global_position += (-0.5 * get_viewport().size + mouse_position) * (zoom - current_zoom)
	_tween_zoom()

func _tween_zoom():
	tween.interpolate_property(
		self,
		"zoom",
		self.zoom,
		current_zoom,
		0.25 if EditorConfig.camera_smoothness != 0 else 0.0,
		Tween.TRANS_EXPO,
		Tween.EASE_OUT
	)
	tween.start()

func _set_smoothness_from_config():
	smoothing_enabled = EditorConfig.camera_smoothness != 0
	smoothing_speed = EditorConfig.camera_smoothness

#-------------------------------------------------
#      Setters & Getters
#-------------------------------------------------
