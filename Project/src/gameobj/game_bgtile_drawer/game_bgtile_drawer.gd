# BgTileDrawer
# Written by: First

tool
extends TileMap

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

var layers: Array

#-------------------------------------------------
#      Notifications
#-------------------------------------------------

#-------------------------------------------------
#      Virtual Methods
#-------------------------------------------------

func _init() -> void:
	EditorConfig.connect("animate_tiles_changed", self, "_check_should_pause_materials")

#-------------------------------------------------
#      Override Methods
#-------------------------------------------------

#-------------------------------------------------
#      Public Methods
#-------------------------------------------------

func draw_from_game_bg_data(_bg_tile_data : Array = [],
		_level_version: String = DataGameLevel.DEFAULT_LEVEL_VERSION):
	for i in _bg_tile_data:
		i = i as DataGameBg
		var target: TileMap = self if !i.z else _provide_z_layer(i.z)
		target.set_cellv(target.world_to_map(i.pos), i.bg_id)

#-------------------------------------------------
#      Connections
#-------------------------------------------------

#-------------------------------------------------
#      Private Methods
#-------------------------------------------------

func _provide_z_layer(z: int) -> TileMap:
	var layer_name: String = str(z)
	var target: TileMap = get_node_or_null(layer_name)
	if !target:
		target = TileMap.new()
		target.set_meta("z_index", z)
		target.tile_set = tile_set
		target.cell_size = cell_size
		target.name = layer_name
		layers.push_back(target)
		if layers.size() > 1:
			layers.sort_custom(self, "_layers_sorter")
			add_child_below_node(layers[ layers.find(target) - 1 ], target)
		else:
			add_child(target)
	return target

func _check_should_pause_materials(is_animating: bool) -> void:
	for material in GameBgData.BG_MATERIALS.values():
		material.set_shader_param("paused", !is_animating)

static func _layers_sorter(a: TileMap, b: TileMap) -> bool:
	return str2var(a.name) < str2var(b.name)

#-------------------------------------------------
#      Setters & Getters
#-------------------------------------------------
