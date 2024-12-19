# Level
# Written by: First

extends Node

class_name Level

"""
	Enter desc here.
"""

#-------------------------------------------------
#      Classes
#-------------------------------------------------

#-------------------------------------------------
#      Signals
#-------------------------------------------------

signal cleared_level

#-------------------------------------------------
#      Constants
#-------------------------------------------------

const PREVIEW_GAME_OBJ: PackedScene = preload(
	"res://src/gameobj/preview_object/preview_game_object.tscn"
)
const SHIFT_POS: Vector2 = 8.0 * Vector2.ONE
const SOLID_TILE_OPTION: float = 9999.0

#-------------------------------------------------
#      Properties
#-------------------------------------------------

export (bool) var close setget set_close
export (bool) var copy_save_data setget set_copy_save_data

#--Level Settings

export (float) var user_id = 1.000000
export (String) var level_version = DataGameLevel.DEFAULT_LEVEL_VERSION
export (String) var level_name = "edited level"
export (String) var user_name = "noname"
export (float) var user_icon_id = 1.000000
export (float) var sliding = 1.000000
export (float) var charge_shot_enable = 1.000000
export (float) var double_damage = 0.000000
export (float) var proto_strike = 0.000000
export (float) var double_jump = 0.000000
export (float) var dodge_roll = 0.000000
export (float) var charge_broom = 0.000000
export (float) var charge_shot_type = 4.000000
export (float) var default_background_color = 29.000000 setget set_default_background_color
export (float) var boss_portrait = -1.000000
export (float) var bosses_count = 0.000000
export (PoolIntArray) var weapons: PoolIntArray = DataGameLevel.DEFAULT_WEAPONS
export (float) var music_track_id = 1.000000
export (float) var music_game_id = 1.000000
export (float) var val_p = 0.000000
export (float) var val_q = 0.000000
export (float) var val_r = 0.000000
export (float) var val_s = 0.000000
export (Array) var data_bosses
export (PoolVector2Array) var disconnected_hscreens
export (PoolVector2Array) var disconnected_vscreens

onready var game_bg_tile: TileMap = $GameBgTileDrawer
onready var game_tilemap: TileMap = $GameTileMapDrawer
onready var game_ladder_tile: TileMap = $GameLadderTileDrawer
onready var game_spike_tile: TileMap = $GameSpikeTileDrawer
onready var game_objects: Node2D = $Objects
onready var game_grid: TextureRect = $GameGrid
onready var game_tile_grid: TextureRect = $GameTileGrid
onready var game_active_screens: TileMap = $GameActiveScreenTileDrawer

var game_data_builder : GameDataBuilder

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

func load_level(_level_dir : String, level_file_path : String) -> int:
	#Check if file is .mmlv
	if not level_file_path.get_extension() == "mmlv":
		return ERR_FILE_UNRECOGNIZED
	
	var f = File.new()
	var open_result = f.open(level_file_path, File.READ)
	
	if open_result == OK:
		construct_level(f.get_as_text())
	
	f.close()
	
	return open_result

func save_level(_level_dir : String, level_file_path : String) -> void:
	var f = File.new()
	var open_result = f.open(level_file_path, File.WRITE)
	
	if open_result == OK:
		f.store_line(get_save())
	
	f.close()
	
	print("Level saved at path: " + level_file_path)

func construct_level(file_data : String):
	clear_level()
	
	game_data_builder = GameDataBuilder.new()
	game_data_builder.build(file_data)
	
	_init_level_data()
	_generate_objects()
	_generate_tilemap()
	_generate_spikes()
	_generate_ladders()
	_generate_bgs()
	_generate_active_screens()
	_update_bg_color()
	data_bosses = game_data_builder.get_data_bosses()
	disconnected_hscreens = game_data_builder.get_data_disconnected_hscreen_positions()
	disconnected_vscreens = game_data_builder.get_data_disconnected_vscreen_positions()

func clear_level():
	#Clear all TileMap(s)
	for tile_map in [ game_tilemap, game_ladder_tile, game_spike_tile, game_bg_tile ]:
		tile_map.propagate_call("clear")
	game_active_screens.set_all_cells_inactive()
	
	#Clear children from Objects
	for i in game_objects.get_children():
		i.queue_free()
	
	level_name = String()
	
	emit_signal("cleared_level")

func get_save() -> String:
	var z: int = 0
	var txt_pool : PoolStringArray = []
	
	#Save level settings
	txt_pool.append(_combine_code_line_text("0a", user_id))
	txt_pool.append(_combine_code_line_text("0v", level_version))
	txt_pool.append(_combine_code_line_text("1a", level_name))
	txt_pool.append(_combine_code_line_text("4a", user_name))
	txt_pool.append(_combine_code_line_text("4b", user_icon_id))
	txt_pool.append(_combine_code_line_text("1b", sliding))
	txt_pool.append(_combine_code_line_text("1c", charge_shot_enable))
	txt_pool.append(_combine_code_line_text("1ba", double_damage))
	txt_pool.append(_combine_code_line_text("1ca", proto_strike))
	txt_pool.append(_combine_code_line_text("1bb", double_jump))
	txt_pool.append(_combine_code_line_text("1cc", charge_broom))
	txt_pool.append(_combine_code_line_text("1cb", dodge_roll))
	txt_pool.append(_combine_code_line_text("1d", charge_shot_type))
	txt_pool.append(_combine_code_line_text("1e", default_background_color))
	txt_pool.append(_combine_code_line_text("1f", boss_portrait))
	txt_pool.append(_combine_code_line_text("1bc", bosses_count))
	
	#Bosses
	var idx : int = 0
	for boss in data_bosses:
		boss = boss as DataGameBoss
		var boss_index: int = boss.index if boss.index >= 0 else idx
		txt_pool.append(_combine_code_line_text("1xc%d" % boss_index, boss.pos.x))
		txt_pool.append(_combine_code_line_text("1yc%d" % boss_index, boss.pos.y))
		txt_pool.append(_combine_code_line_text("1ga%d" % boss_index, boss.primary_weak_enabled))
		txt_pool.append(_combine_code_line_text("1g%d" % boss_index, boss.primary_weak_wp_slot_id))
		txt_pool.append(_combine_code_line_text("1ha%d" % boss_index, boss.secondary_weak_enabled))
		txt_pool.append(_combine_code_line_text("1h%d" % boss_index, boss.secondary_weak_wp_slot_id))
		txt_pool.append(_combine_code_line_text("1i%d" % boss_index, boss.immune_enabled))
		txt_pool.append(_combine_code_line_text("1j%d" % boss_index, boss.immune_wp_slot_id))
		txt_pool.append(_combine_code_line_text("1ua%d" % boss_index, boss.drop_item_on_death))
		txt_pool.append(_combine_code_line_text("1u%d" % boss_index, boss.drop_item_id))
		txt_pool.append(_combine_code_line_text("1uo%d" % boss_index, boss.drop_key_color))
		txt_pool.append(_combine_code_line_text("1va%d" % boss_index, boss.drop_wp_on_death))
		txt_pool.append(_combine_code_line_text("1v%d" % boss_index, boss.drop_mode))
		txt_pool.append(_combine_code_line_text("1w%d" % boss_index, boss.drop_wp_slot_id))
		txt_pool.append(_combine_code_line_text("1xa%d" % boss_index, boss.change_player_enabled))
		txt_pool.append(_combine_code_line_text("1x%d" % boss_index, boss.change_player_id))
		txt_pool.append(_combine_code_line_text("1z%d" % boss_index, boss.death_change_music_enabled))
		txt_pool.append(_combine_code_line_text("1za%d" % boss_index, boss.death_change_music_category))
		txt_pool.append(_combine_code_line_text("1zb%d" % boss_index, boss.death_change_music_id))
		txt_pool.append(_combine_code_line_text("1n%d" % boss_index, boss.music_category))
		txt_pool.append(_combine_code_line_text("1o%d" % boss_index, boss.music_id))
		
		idx += 1
	
	#Weapons
	idx = 0
	for i in weapons:
		if i != DataGameLevel.EMPTY_WEAPON_SLOT:
			txt_pool.append(_combine_code_line_text("1k" + str(idx), i))
		idx += 1
	
	#Level (cont.)
	txt_pool.append(_combine_code_line_text("1l", music_track_id))
	txt_pool.append(_combine_code_line_text("1m", music_game_id))
	_update_used_rect() #Val p, q, r, and s respectively
	txt_pool.append(_combine_code_line_text("1p", val_p))
	txt_pool.append(_combine_code_line_text("1q", val_q))
	txt_pool.append(_combine_code_line_text("1r", val_r))
	txt_pool.append(_combine_code_line_text("1s", val_s))
	
	#Screen disconnections
	for pos in disconnected_hscreens:
		pos = pos as Vector2
		txt_pool.append(_combine_code_line_text("2b", 0, pos))
	for pos in disconnected_vscreens:
		pos = pos as Vector2
		txt_pool.append(_combine_code_line_text("2c", 1, pos))
	
	#Active screens
	for i in GameLevel.LEVEL_SIZE.x:
		for j in GameLevel.LEVEL_SIZE.y:
			var map_to_world_pos = game_active_screens.map_to_world(Vector2(i, j))
			
			if game_active_screens.get_cell(i, j) == TileMap.INVALID_CELL:
				txt_pool.append(_combine_code_line_text("2a", 1, map_to_world_pos))
	
	#Backgrounds
	for layer in (game_bg_tile.get_children() + [ game_bg_tile ]):
		z = layer.z_index | layer.get_meta("z_index", 0)
		for i in layer.get_used_cells():
			var map_to_world_pos = layer.map_to_world(i)
			var cell_id = layer.get_cellv(i)
			
			txt_pool.append(_combine_code_line_text(
				"2d", cell_id, map_to_world_pos, z, "" if layer == game_bg_tile else ":"))
	
	#Save all objects (not including tile, ladder, and spikes)
	for i in get_tree().get_nodes_in_group("PreviewObject"):
		i = i as PreviewGameObject
		
		var obj_pos: Vector2 = i.position - SHIFT_POS
		z = i.z_index
		
		txt_pool.append(_combine_code_line_text("a", 1, obj_pos, z))
		if i.obj_vector_x != BaseDataGame.MISSING_DATA:
			txt_pool.append(_combine_code_line_text("b", i.obj_vector_x, obj_pos, z))
		if i.obj_vector_y != BaseDataGame.MISSING_DATA:
			txt_pool.append(_combine_code_line_text("c", i.obj_vector_y, obj_pos, z))
		if i.obj_type != BaseDataGame.MISSING_DATA:
			txt_pool.append(_combine_code_line_text("d", i.obj_type, obj_pos, z))
		if i.obj_id != BaseDataGame.MISSING_DATA:
			txt_pool.append(_combine_code_line_text("e", i.obj_id, obj_pos, z))
		if i.obj_appearance != BaseDataGame.MISSING_DATA:
			txt_pool.append(_combine_code_line_text("f", i.obj_appearance, obj_pos, z))
		if i.obj_direction != BaseDataGame.MISSING_DATA:
			txt_pool.append(_combine_code_line_text("g", i.obj_direction, obj_pos, z))
		if i.obj_timer != BaseDataGame.MISSING_DATA:
			txt_pool.append(_combine_code_line_text("h", i.obj_timer, obj_pos, z))
		if i.obj_tex_h_offset != BaseDataGame.MISSING_DATA:
			txt_pool.append(_combine_code_line_text("j", i.obj_tex_h_offset, obj_pos, z))
		if i.obj_tex_v_offset != BaseDataGame.MISSING_DATA:
			txt_pool.append(_combine_code_line_text("k", i.obj_tex_v_offset, obj_pos, z))
		if i.obj_unknown_parameter != BaseDataGame.MISSING_DATA:
			txt_pool.append(_combine_code_line_text("l", i.obj_unknown_parameter, obj_pos, z))
		if i.obj_destination_x != BaseDataGame.MISSING_DATA:
			txt_pool.append(_combine_code_line_text("m", i.obj_destination_x, obj_pos, z))
		if i.obj_destination_y != BaseDataGame.MISSING_DATA:
			txt_pool.append(_combine_code_line_text("n", i.obj_destination_y, obj_pos, z))
		if i.obj_option != BaseDataGame.MISSING_DATA:
			txt_pool.append(_combine_code_line_text("o", i.obj_option, obj_pos, z))
		if i.obj_new_speed != BaseDataGame.MISSING_DATA:
			txt_pool.append(_combine_code_line_text("p", i.obj_new_speed, obj_pos, z))
		if i.obj_new_timer_option != BaseDataGame.MISSING_DATA:
			txt_pool.append(_combine_code_line_text("q", i.obj_new_timer_option, obj_pos, z))
		if i.obj_who_knows != BaseDataGame.MISSING_DATA:
			txt_pool.append(_combine_code_line_text("r", i.obj_who_knows, obj_pos, z))
	
	#Save Tiles
	z = game_tilemap.z_index
	for i in game_tilemap.get_used_cells():
		var map_to_world_pos = game_tilemap.map_to_world(i)
		var cell_id = game_tilemap.get_cellv(i)
		var subtile_pos: Vector2 = \
			GameTileSetData.SUBTILE_POSITION_IDS.keys()[ cell_id % GameTileSetData.SUBTILE_COUNT ]
		
		txt_pool.append(_combine_code_line_text(
			"a", 1, map_to_world_pos, z))
		txt_pool.append(_combine_code_line_text(
			"e", floor(cell_id / GameTileSetData.SUBTILE_COUNT), map_to_world_pos, z))
		txt_pool.append(_combine_code_line_text(
			"i", 1, map_to_world_pos, z))
		txt_pool.append(_combine_code_line_text(
			"j", subtile_pos.x, map_to_world_pos, z))
		txt_pool.append(_combine_code_line_text(
			"k", subtile_pos.y, map_to_world_pos, z))
		if game_tilemap.get_cell_autotile_coord(i.x, i.y) == Vector2.ZERO:
			txt_pool.append(_combine_code_line_text(
				"o", SOLID_TILE_OPTION, map_to_world_pos, z))
	
	#Save Spikes
	z = game_spike_tile.z_index
	for i in game_spike_tile.get_used_cells():
		var map_to_world_pos = game_spike_tile.map_to_world(i)
		var cell_id = game_spike_tile.get_cellv(i)
		var spike_orientation: int = cell_id % GameSpikeData.SPIKE_TILE_COUNT
		
		txt_pool.append(_combine_code_line_text(
			"a", 1, map_to_world_pos, z))
		txt_pool.append(_combine_code_line_text(
			"e", floor(cell_id / GameSpikeData.SPIKE_TILE_COUNT), map_to_world_pos, z))
		txt_pool.append(_combine_code_line_text(
			"i", 2, map_to_world_pos, z))
		if spike_orientation:
			txt_pool.append(_combine_code_line_text(
				"l", spike_orientation, map_to_world_pos, z))
		if game_spike_tile.get_cell_autotile_coord(i.x, i.y) == Vector2.ZERO:
			txt_pool.append(_combine_code_line_text(
				"o", SOLID_TILE_OPTION, map_to_world_pos, z))
	
	#Save Ladders
	z = game_ladder_tile.z_index
	for i in game_ladder_tile.get_used_cells():
		var map_to_world_pos = game_ladder_tile.map_to_world(i)
		var cell_id = game_ladder_tile.get_cellv(i)
		
		txt_pool.append(_combine_code_line_text(
			"a", 1, map_to_world_pos, z))
		txt_pool.append(_combine_code_line_text(
			"e", cell_id, map_to_world_pos, z))
		txt_pool.append(_combine_code_line_text(
			"i", 3, map_to_world_pos, z))
	
	#Config header
	txt_pool.append("[Level]")
	
	txt_pool.invert()
	
	return txt_pool.join("\n")

func toggle_screen_grid():
	game_grid.visible = !game_grid.visible
func toggle_tile_grid():
	game_tile_grid.visible = !game_tile_grid.visible
func toggle_game_tile():
	game_tilemap.visible = !game_tilemap.visible
func toggle_game_bg_tile():
	game_bg_tile.visible = !game_bg_tile.visible
func toggle_game_objects():
	game_objects.visible = !game_objects.visible
func toggle_game_active_screens():
	game_active_screens.visible = !game_active_screens.visible
func toggle_game_spike_tile():
	game_spike_tile.visible = !game_spike_tile.visible
func toggle_game_ladder_tile():
	game_ladder_tile.visible = !game_ladder_tile.visible

func get_player_position() -> Vector2:
	for i in game_objects.get_children():
		if i is PreviewGameObject:
			if i.obj_type == 4:
				return i.global_position
	
	return Vector2.ZERO

func _update_used_rect() -> void:
	var result_rect: Rect2 = Rect2()
	
	for tilemap in [ game_tilemap, game_spike_tile, game_ladder_tile ]:
		var used_rect: Rect2 = tilemap.get_used_rect()
		if used_rect.has_no_area():
			continue
		result_rect = _get_global_rect(used_rect, tilemap) if result_rect.has_no_area() else \
			result_rect.merge(_get_global_rect(used_rect, tilemap))
	
	var objects_used_rect: Rect2 = _get_used_object_rect(
		game_objects.get_children(), 8.0 * Vector2.ONE)
	if !objects_used_rect.has_no_area():
		result_rect = objects_used_rect if result_rect.has_no_area() else \
			result_rect.merge(objects_used_rect)
	
	# I assume that this won't happen, but if these vals would not be a multiple of TILE_SIZE, 
	# it  breaks the level, so fix this.
	
	# p = left, q = right, r = top, t = bottom
	val_p = stepify(result_rect.position.x, GameLevel.TILE_SIZE)
	val_q = stepify(result_rect.end.x, GameLevel.TILE_SIZE)
	val_r = stepify(result_rect.position.y, GameLevel.TILE_SIZE)
	val_s = stepify(result_rect.end.y, GameLevel.TILE_SIZE)

	# This does happen, where the bounds can become outside of the entire 50x20 screens, either to
	# the left, or the right. So in order to fix this problem, we will minmax the bounds always.
	
	# left bound has to be at least 0
	val_p = max(val_p, 0.0)
	
	# right bound has to be at most the end of the level
	val_q = min(val_q, GameLevel.SCREEN_SIZE.x * GameLevel.LEVEL_SIZE.x - GameLevel.TILE_SIZE)
	
	# left bound has to be at least 0
	val_r = max(val_r, 0.0)
	
	# bottom bound has to be at most the bottom of the level
	val_s = min(val_s, GameLevel.SCREEN_SIZE.y * GameLevel.LEVEL_SIZE.y - GameLevel.TILE_SIZE)

#-------------------------------------------------
#      Connections
#-------------------------------------------------

#-------------------------------------------------
#      Private Methods
#-------------------------------------------------

func _get_global_rect(used_rect: Rect2, tile_map: TileMap) -> Rect2:
	return Rect2(tile_map.to_global(tile_map.map_to_world(used_rect.position)),
		used_rect.size * tile_map.cell_size)

func _combine_code_line_text(code : String, value, position = null,
		z: int = BaseDataGame.MISSING_Z_DATA, separator: String = "") -> String:
	var line: String = code if z == BaseDataGame.MISSING_Z_DATA else ("z%d%s%s" % [ z, separator, code ])
	if typeof(position) == TYPE_VECTOR2:
		line += "%d,%d" % [ position.x, position.y ]
	line += ("=\"%.03f\"" if typeof(value) == TYPE_REAL or typeof(value) == TYPE_INT else "=\"%s\"") % value
	return line

func _init_level_data():
	var _gamelv_data : DataGameLevel = game_data_builder.get_data_game_level()
	
	user_id = _gamelv_data.user_id
	level_version = _gamelv_data.level_version
	level_name = _gamelv_data.level_name
	user_name = _gamelv_data.user_name
	user_icon_id = _gamelv_data.user_icon_id
	sliding = _gamelv_data.sliding
	charge_shot_enable = _gamelv_data.charge_shot_enable
	double_damage = _gamelv_data.double_damage
	proto_strike = _gamelv_data.proto_strike
	double_jump = _gamelv_data.double_jump
	charge_broom = _gamelv_data.charge_broom
	dodge_roll = _gamelv_data.dodge_roll
	charge_shot_type = _gamelv_data.charge_shot_type
	default_background_color = _gamelv_data.default_background_color
	boss_portrait = _gamelv_data.boss_portrait
	bosses_count = _gamelv_data.bosses_count
	weapons = _gamelv_data.weapons
	music_track_id = _gamelv_data.music_track_id
	music_game_id = _gamelv_data.music_game_id
	val_p = _gamelv_data.val_p
	val_q = _gamelv_data.val_q
	val_r = _gamelv_data.val_r
	val_s = _gamelv_data.val_s

func _generate_objects():
	var _gameobj_data = game_data_builder.get_data_game_objects()
	
	for i in _gameobj_data:
		i = i as DataGameObject
		
		var prev_obj: Node2D = PREVIEW_GAME_OBJ.instance()
		game_objects.add_child(prev_obj)
		prev_obj.z_index = i.z
		prev_obj.global_position = i.pos
		prev_obj.obj_vector_x = i.obj_vector_x
		prev_obj.obj_vector_y = i.obj_vector_y
		prev_obj.obj_type = i.obj_type
		prev_obj.obj_id = i.obj_id
		prev_obj.obj_appearance = i.obj_appearance
		prev_obj.obj_direction = i.obj_direction
		prev_obj.obj_timer = i.obj_timer
		prev_obj.obj_tex_h_offset = i.obj_tex_h_offset
		prev_obj.obj_tex_v_offset = i.obj_tex_v_offset
		prev_obj.obj_unknown_parameter = i.obj_unknown_parameter
		prev_obj.obj_destination_x = i.obj_destination_x
		prev_obj.obj_destination_y = i.obj_destination_y
		prev_obj.obj_option = i.obj_option
		prev_obj.obj_new_speed = i.obj_new_speed
		prev_obj.obj_new_timer_option = i.obj_new_timer_option
		prev_obj.obj_who_knows = i.obj_who_knows
		prev_obj.set_owner(get_tree().edited_scene_root)
		prev_obj.shift_pos()

func _generate_tilemap():
	var _tile_data : Array = game_data_builder.get_data_tiles()
	game_tilemap.draw_from_game_data_tiles(_tile_data, level_version)

func _generate_spikes():
	var _spike_tiles_data : Array = game_data_builder.get_data_spikes()
	game_spike_tile.draw_from_game_data_spikes(_spike_tiles_data, level_version)

func _generate_ladders():
	var _ladder_tiles_data : Array = game_data_builder.get_data_ladders()
	game_ladder_tile.draw_from_game_data_ladders(_ladder_tiles_data, level_version)

func _generate_bgs():
	var _bg_tile_data : Array = game_data_builder.get_data_bgs()
	game_bg_tile.draw_from_game_bg_data(_bg_tile_data, level_version)

func _generate_active_screens():
	game_active_screens.draw_from_vectors(game_data_builder.get_data_active_screen_positions())

func _update_bg_color():
	$Bg.color = Color(GameBgColorData.COLORS[int(default_background_color)])

# Return a rectangle boundary enclosing all the objects
static func _get_used_object_rect(node2ds: Array, offset: Vector2 = Vector2.ZERO) -> Rect2:
	var used_rect: Rect2 = Rect2() # Ensures that if node2ds are empty, Rect2() will always be returned
	
	for i in node2ds.size():
		var node2d: Node2D = node2ds[i] as Node2D
		
		if i == 0:
			# Will always use the first node2d as a comparison for the next node
			used_rect = Rect2(node2d.global_position, Vector2.ZERO)
			continue
		
		used_rect.position.x = min(node2d.global_position.x, used_rect.position.x) # Leftmost
		used_rect.position.y = min(node2d.global_position.y, used_rect.position.y) # Topmost
		used_rect.size.x = max(used_rect.end.x, node2d.global_position.x) - used_rect.position.x # Rightmost
		used_rect.size.y = max(used_rect.end.y, node2d.global_position.y) - used_rect.position.y # Bottommost
	
	# Expands rectangle by offset
	used_rect.position -= offset
	used_rect.size += offset
	
	return used_rect

#-------------------------------------------------
#      Setters & Getters
#-------------------------------------------------

func set_close(val : bool) -> void:
	if not val:
		return
	
	clear_level()

func set_copy_save_data(val : bool) -> void:
	if not val:
		return
	
	OS.set_clipboard(get_save())
	OS.alert("Save data copied to clipboard.", "Message")

func set_default_background_color(val) -> void:
	default_background_color = float(val)
	_update_bg_color()
