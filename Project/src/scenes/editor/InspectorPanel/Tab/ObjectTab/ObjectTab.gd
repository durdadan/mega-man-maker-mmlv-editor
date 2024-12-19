# ObjectTab
# Written by: First

extends MainInspectorTab

#class_name optional

"""
	Enter desc here.
"""

#-------------------------------------------------
#      Classes
#-------------------------------------------------

enum ObjectType {
	OBJECT = -999, PLAYER = 4, ENEMY = 5, GIMMICK = 6, PICKUP = 7, BOSS = 8
}

#-------------------------------------------------
#      Signals
#-------------------------------------------------

#-------------------------------------------------
#      Constants
#-------------------------------------------------

const UNDEFINED_OBJECT: String = "Undefined Object"
const UNDEFINED_TYPES: Dictionary = {
	ObjectType.PLAYER	: GamePlayerData.PLAYER_DATA[0],
	ObjectType.ENEMY	: "Undefined Enemy",
	ObjectType.GIMMICK	: "Undefined Gimmick",
	ObjectType.PICKUP	: "Undefined Pickup",
	ObjectType.BOSS		: "Undefined Boss",
}

#-------------------------------------------------
#      Properties
#-------------------------------------------------

onready var atb_hbox_obj_vec_x = $VBox/ScrollContainer/Vbox/AtbHboxObjVecX
onready var atb_hbox_obj_vec_y = $VBox/ScrollContainer/Vbox/AtbHboxObjVecY
onready var atb_hbox_obj_type = $VBox/ScrollContainer/Vbox/AtbHboxObjType
onready var atb_hbox_obj_id = $VBox/ScrollContainer/Vbox/AtbHboxObjID
onready var atb_hbox_obj_appearance = $VBox/ScrollContainer/Vbox/AtbHboxObjAppearance
onready var atb_hbox_obj_direction = $VBox/ScrollContainer/Vbox/AtbHboxObjDirection
onready var atb_hbox_obj_timer = $VBox/ScrollContainer/Vbox/AtbHboxObjTimer
onready var atb_hbox_obj_tex_h = $VBox/ScrollContainer/Vbox/AtbHboxObjTexH
onready var atb_hbox_obj_tex_v = $VBox/ScrollContainer/Vbox/AtbHboxObjTexV
onready var atb_hbox_obj_unknown_parameter = $VBox/ScrollContainer/Vbox/AtbHboxObjUnknownParameter
onready var atb_hbox_obj_dest_x = $VBox/ScrollContainer/Vbox/AtbHboxObjDestX
onready var atb_hbox_obj_dest_y = $VBox/ScrollContainer/Vbox/AtbHboxObjDestY
onready var atb_hbox_obj_option = $VBox/ScrollContainer/Vbox/AtbHboxObjOption
onready var atb_hbox_obj_new_speed = $VBox/ScrollContainer/Vbox/AtbHboxObjNewSpeed
onready var atb_hbox_obj_new_timer_option = $VBox/ScrollContainer/Vbox/AtbHboxObjNewTimerOption
onready var atb_hbox_obj_who_knows = $VBox/ScrollContainer/Vbox/AtbHboxObjWhoKnows
onready var atb_label_level_object = $VBox/ScrollContainer/Vbox/AtbLabelLevelObject
onready var atb_label_locks_boss_doors = $VBox/ScrollContainer/Vbox/AtbLockBossDoors
onready var atb_label_found_the_bone = $VBox/ScrollContainer/Vbox/AtbFoundTheBone
onready var atb_label_boss_warning = $VBox/ScrollContainer/Vbox/AtbBossWarning

#-------------------------------------------------
#      Notifications
#-------------------------------------------------

func _ready() -> void:
	_connect_SelectedObjects()

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

func _on_SelectedObjects_selected():
	_update_properties_from_selected_objects()

func _on_AtbHboxObjVecX_value_entered() -> void:
	_set_selected_objects("obj_vector_x", atb_hbox_obj_vec_x.get_value())

func _on_AtbHboxObjVecY_value_entered() -> void:
	_set_selected_objects("obj_vector_y", atb_hbox_obj_vec_y.get_value())

func _on_AtbHboxObjType_value_entered() -> void:
	_set_selected_objects("obj_type", atb_hbox_obj_type.get_value())
	_set_selected_objects("obj_id", "-999") # Resets the id when the type is changed to prevent accidental mismatches.
	_update_properties_from_selected_objects()

func _on_AtbHboxObjID_value_entered() -> void:
	_set_selected_objects("obj_id", atb_hbox_obj_id.get_value())
	_update_properties_from_selected_objects()

func _on_AtbHboxObjAppearance_value_entered() -> void:
	_set_selected_objects("obj_appearance", atb_hbox_obj_appearance.get_value())

func _on_AtbHboxObjDirection_value_entered() -> void:
	_set_selected_objects("obj_direction", atb_hbox_obj_direction.get_value())

func _on_AtbHboxObjTimer_value_entered() -> void:
	_set_selected_objects("obj_timer", atb_hbox_obj_timer.get_value())

func _on_AtbHboxObjTexH_value_entered() -> void:
	_set_selected_objects("obj_tex_h_offset", atb_hbox_obj_tex_h.get_value())

func _on_AtbHboxObjTexV_value_entered() -> void:
	_set_selected_objects("obj_tex_v_offset", atb_hbox_obj_tex_v.get_value())

func _on_AtbHboxObjUnknownParameter_value_entered() -> void:
	_set_selected_objects("obj_unknown_parameter", atb_hbox_obj_unknown_parameter.get_value())

func _on_AtbHboxObjDestX_value_entered() -> void:
	_set_selected_objects("obj_destination_x", atb_hbox_obj_dest_x.get_value())

func _on_AtbHboxObjDestY_value_entered() -> void:
	_set_selected_objects("obj_destination_y", atb_hbox_obj_dest_y.get_value())

func _on_AtbHboxObjOption_value_entered() -> void:
	_set_selected_objects("obj_option", atb_hbox_obj_option.get_value())

func _on_AtbHboxObjNewSpeed_value_entered() -> void:
	_set_selected_objects("obj_new_speed", atb_hbox_obj_new_speed.get_value())

func _on_AtbHboxObjNewTimerOption_value_entered() -> void:
	_set_selected_objects("obj_new_timer_option", atb_hbox_obj_new_timer_option.get_value())

func _on_AtbHboxObjWhoKnows_value_entered() -> void:
	_set_selected_objects("obj_who_knows", atb_hbox_obj_who_knows.get_value())

#-------------------------------------------------
#      Private Methods
#-------------------------------------------------

func _update_properties_from_selected_objects():
	clear_all_properties()
	
	for i in SelectedObjects.selected_objects:
		if i is PreviewGameObject:
			atb_hbox_obj_vec_x.set_value(i.obj_vector_x)
			atb_hbox_obj_vec_y.set_value(i.obj_vector_y)
			atb_hbox_obj_type.set_value(i.obj_type)
			atb_hbox_obj_id.set_value(i.obj_id)
			atb_hbox_obj_appearance.set_value(i.obj_appearance)
			atb_hbox_obj_direction.set_value(i.obj_direction)
			atb_hbox_obj_timer.set_value(i.obj_timer)
			atb_hbox_obj_tex_h.set_value(i.obj_tex_h_offset)
			atb_hbox_obj_tex_v.set_value(i.obj_tex_v_offset)
			atb_hbox_obj_unknown_parameter.set_value(i.obj_unknown_parameter)
			atb_hbox_obj_dest_x.set_value(i.obj_destination_x)
			atb_hbox_obj_dest_y.set_value(i.obj_destination_y)
			atb_hbox_obj_option.set_value(i.obj_option)
			atb_hbox_obj_new_speed.set_value(i.obj_new_speed)
			atb_hbox_obj_new_timer_option.set_value(i.obj_new_timer_option)
			atb_hbox_obj_who_knows.set_value(i.obj_who_knows)
			atb_label_level_object.text = _get_level_object_name(i.obj_type, i.obj_id)

func _set_selected_objects(property : String, value):
	for i in SelectedObjects.selected_objects:
		if i is PreviewGameObject:
			i.set(property, value)

func _connect_SelectedObjects():
	SelectedObjects.connect("selected", self, "_on_SelectedObjects_selected")

func _get_level_object_name(type: int, id: int) -> String:
	atb_label_locks_boss_doors.hide()
	atb_label_found_the_bone.hide()
	atb_label_boss_warning.hide()
	match type:
		ObjectType.PLAYER:
			return _get_object_name(GamePlayerData.PLAYER_DATA, id, type)
		ObjectType.ENEMY:
			if GameEnemyData.BoneEnemies.has(id):
				atb_label_found_the_bone.show()
			if GameEnemyData.MiniBosses.has(id):
				atb_label_locks_boss_doors.show()
			return _get_object_name(GameEnemyData.ENEMY_DATA, id, type)
		ObjectType.GIMMICK:
			return _get_object_name(GameObjectData.GIMMICK_DATA, id, type)
		ObjectType.PICKUP:
			return _get_object_name(GamePickupData.PICKUP_DATA, id, type)
		ObjectType.BOSS:
			atb_label_boss_warning.show()
			return _get_object_name(GameBossData.BOSS_DATA, id, type)
		ObjectType.OBJECT:
			return _get_object_name(GameWaterAndPlateData.OBJECT_DATA, id, type)
	return UNDEFINED_OBJECT

static func _get_object_name(storage: Dictionary, id: int, type: int) -> String:
	return storage.get(id, UNDEFINED_TYPES.get(type, UNDEFINED_OBJECT))

#-------------------------------------------------
#      Setters & Getters
#-------------------------------------------------
