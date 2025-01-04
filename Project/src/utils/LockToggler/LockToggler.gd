# ButtonsToggler
# Written by: First

extends Node

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

#-------------------------------------------------
#      Properties
#-------------------------------------------------

#-------------------------------------------------
#      Notifications
#-------------------------------------------------

func _ready() -> void:
	var children: Array = get_parent().get_children()
	for child in children:
		if child is BaseButton:
			child.pressed = EditorConfig.get(child.get_meta("editor_config_property", "locked_keyboard"))
