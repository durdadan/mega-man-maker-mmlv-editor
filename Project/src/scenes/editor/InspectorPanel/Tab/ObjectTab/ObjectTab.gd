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

#-------------------------------------------------
#      Signals
#-------------------------------------------------

#-------------------------------------------------
#      Constants
#-------------------------------------------------

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
onready var atb_hbox_obj_dest_x = $VBox/ScrollContainer/Vbox/AtbHboxObjDestX
onready var atb_hbox_obj_dest_y = $VBox/ScrollContainer/Vbox/AtbHboxObjDestY
onready var atb_hbox_obj_option = $VBox/ScrollContainer/Vbox/AtbHboxObjOption
onready var atb_hbox_obj_variant = $VBox/ScrollContainer/Vbox/AtbHboxObjVariant
onready var atb_hbox_obj_speed = $VBox/ScrollContainer/Vbox/AtbHboxObjSpeed
onready var atb_hbox_obj_duration = $VBox/ScrollContainer/Vbox/AtbHboxObjDuration

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

func _on_AtbHboxObjDestX_value_entered() -> void:
	_set_selected_objects("obj_destination_x", atb_hbox_obj_dest_x.get_value())

func _on_AtbHboxObjDestY_value_entered() -> void:
	_set_selected_objects("obj_destination_y", atb_hbox_obj_dest_y.get_value())

func _on_AtbHboxObjOption_value_entered() -> void:
	_set_selected_objects("obj_option", atb_hbox_obj_option.get_value())
	
func _on_AtbHboxObjVariant_value_entered() -> void:
	_set_selected_objects("obj_variant", atb_hbox_obj_variant.get_value())
	
func _on_AtbHboxObjSpeed_value_entered() -> void:
	_set_selected_objects("obj_speed", atb_hbox_obj_speed.get_value())

func _on_AtbHboxObjDuration_value_entered() -> void:
	_set_selected_objects("obj_duration", atb_hbox_obj_duration.get_value())


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
			atb_hbox_obj_dest_x.set_value(i.obj_destination_x)
			atb_hbox_obj_dest_y.set_value(i.obj_destination_y)
			atb_hbox_obj_option.set_value(i.obj_option)
			atb_hbox_obj_speed.set_value(i.obj_speed)
			atb_hbox_obj_variant.set_value(i.obj_variant)
			atb_hbox_obj_duration.set_value(i.obj_duration)
			atb_label_level_object.text = _get_level_object_name(i.obj_type, i.obj_id)

func _set_selected_objects(property : String, value):
	for i in SelectedObjects.selected_objects:
		if i is PreviewGameObject:
			i.set(property, value)

func _connect_SelectedObjects():
	SelectedObjects.connect("selected", self, "_on_SelectedObjects_selected")

func _get_level_object_name(type: int ,id: int) -> String: 
	var object_name = ""
	atb_label_locks_boss_doors.hide()
	atb_label_found_the_bone.hide()
	atb_label_boss_warning.hide()
	# Playable Characters
	if id == int(round(DataGameObject.MISSING_DATA)):
		id = 0
	if type == 4:
		object_name = GamePlayerData.PLAYER_DATA.get(id)
	# Enemies
	elif type == 5:
		object_name = GameEnemyData.ENEMY_DATA.get(id)
		if GameEnemyData.BoneEnemies.has(id):
			atb_label_found_the_bone.show()
		if GameEnemyData.MiniBosses.has(id):
			atb_label_locks_boss_doors.show()
	# Level Objects
	elif type == 6:
		object_name = GameObjectData.OBJECT_DATA.get(id)
	# Pickups
	elif type == 7:
		object_name = GamePickupData.PICKUP_DATA.get(id)
	# Bosses
	elif type == 8:
		object_name = GameBossData.BOSS_DATA.get(id)
		atb_label_boss_warning.show()
	elif type == -999:
		object_name = GameWaterAndPlateData.WATER_AND_PLATE_DATA.get(id)
	return object_name
	
#-------------------------------------------------
#      Setters & Getters
#-------------------------------------------------


