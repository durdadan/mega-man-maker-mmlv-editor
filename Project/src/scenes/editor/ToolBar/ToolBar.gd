# Script_Name_Here
# Written by: 

extends Panel

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

signal add_object_pressed

signal pressed

onready var lock_btn = $HBoxContainer/EditModeVBox2/HBoxContainer/LockBtn
onready var toggle_tile_anim_btn = $HBoxContainer/EditModeVBox2/HBoxContainer/ToggleTileAnimationsBtn

#-------------------------------------------------
#      Constants
#-------------------------------------------------

#-------------------------------------------------
#      Properties
#-------------------------------------------------

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

func _on_AddBtn_pressed() -> void:
	emit_signal("add_object_pressed")


func _on_ObjectBtn_pressed() -> void:
	EditMode.set_mode(EditMode.Mode.OBJECT)
	emit_signal("pressed")

func _on_TileMapBtn_pressed() -> void:
	EditMode.set_mode(EditMode.Mode.TILE)
	emit_signal("pressed")

func _on_BgBtn_pressed() -> void:
	EditMode.set_mode(EditMode.Mode.BACKGROUND)
	emit_signal("pressed")

func _on_ActiveScreenBtn_pressed() -> void:
	EditMode.set_mode(EditMode.Mode.ACTIVE_SCREEN)
	emit_signal("pressed")

func _on_LadderBtn_pressed() -> void:
	EditMode.set_mode(EditMode.Mode.LADDER)
	emit_signal("pressed")

func _on_SpikeBtn_pressed() -> void:
	EditMode.set_mode(EditMode.Mode.SPIKE)
	emit_signal("pressed")

func _on_LockBtn_pressed() -> void:
	EditorConfig.locked_keyboard = lock_btn.pressed

func _on_ToggleTileAnimations_pressed() -> void:
	EditorConfig.animate_tiles = toggle_tile_anim_btn.pressed

func _on_ButtonsToggler_pressed() -> void:
	SelectedObjects.remove_all()

#-------------------------------------------------
#      Private Methods
#-------------------------------------------------

#-------------------------------------------------
#      Setters & Getters
#-------------------------------------------------
