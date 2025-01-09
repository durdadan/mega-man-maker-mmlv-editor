# GameDataBuilder
# Written by: First

tool
extends Reference

class_name GameDataBuilder

"""
	Enter desc here.
"""

#-------------------------------------------------
#      Classes
#-------------------------------------------------

class PoolStringReverse:
	extends Reference
	
	static func reverse(text : String) -> PoolStringArray:
		var reversed_poolstring = Array(text.split("\n", false))
		reversed_poolstring.invert()
		return reversed_poolstring

class TempObjectCodeData:
	extends BaseDataGame
	
	var a : float = BaseDataGame.MISSING_DATA
	var b : float = BaseDataGame.MISSING_DATA
	var c : float = BaseDataGame.MISSING_DATA
	var d : float = BaseDataGame.MISSING_DATA
	var e : float = BaseDataGame.MISSING_DATA
	var f : float = BaseDataGame.MISSING_DATA
	var g : float = BaseDataGame.MISSING_DATA
	var h : float = BaseDataGame.MISSING_DATA
	var i : float = 0
	var j : float = BaseDataGame.MISSING_DATA
	var k : float = BaseDataGame.MISSING_DATA
	var l : float = BaseDataGame.MISSING_DATA
	var m : float = BaseDataGame.MISSING_DATA
	var n : float = BaseDataGame.MISSING_DATA
	var p : float = BaseDataGame.MISSING_DATA
	var q : float = BaseDataGame.MISSING_DATA
	var r : float = BaseDataGame.MISSING_DATA
	var pos : Vector2

class TempBossCodeData:
	extends BaseDataGame
	
	var _1xc = 0
	var _1yc = 0
	var _1ga
	var _1g
	var _1ha
	var _1h
	var _1i
	var _1j
	var _1ua
	var _1u
	var _1uo
	var _1va
	var _1v
	var _1w
	var _1xa
	var _1x
	var _1n
	var _1o
	var _1z
	var _1za
	var _1zb
	var boss_index: int

#-------------------------------------------------
#      Signals
#-------------------------------------------------

#-------------------------------------------------
#      Constants
#-------------------------------------------------

const GAME_ID_LABEL_PREFIX = "Mega Man %d"
const UNUSED_ASSETS: int = 999

enum BlockType {
	OBJECT = 0,
	TILE = 1,
	SPIKE = 2,
	LADDER = 3
}

#-------------------------------------------------
#      Properties
#-------------------------------------------------

var _z_index_regex: RegEx = RegEx.new()
var _data_game_level : DataGameLevel setget , get_data_game_level
var _data_bosses : Array setget , get_data_bosses
var _data_game_objects : Array setget , get_data_game_objects
var _data_tiles : Array setget , get_data_tiles
var _data_spikes : Array setget , get_data_spikes
var _data_ladders : Array setget , get_data_ladders
var _data_bgs : Array setget , get_data_bgs
var _data_active_screen_positions : PoolVector2Array setget , get_data_active_screen_positions
var _data_disconnected_hscreen_positions : PoolVector2Array setget , get_data_disconnected_hscreen_positions
var _data_disconnected_vscreen_positions : PoolVector2Array setget , get_data_disconnected_vscreen_positions

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

func _init() -> void:
	_z_index_regex.compile("^z(\\d+):?(\\d?[a-z]\\d+,\\d+.*)")

func build(file_data : String):
	clear_all_data()
	
	var _reversed_pool_file_data : PoolStringArray = PoolStringReverse.reverse(file_data)
	var temp_boss_code_data = TempBossCodeData.new()
	var temp_obj_code_data : TempObjectCodeData = null
	
	for i in _reversed_pool_file_data:
		i = i as String
		
		# Calculate z-layer of the item
		var z: int = 0
		var _dataset : PoolStringArray
		var _matcher: RegExMatch = _z_index_regex.search(i)
		if _matcher:
			z = int(_matcher.strings[1])
			i = _matcher.strings[2]
		
		#Level settings
		match i.left(2):
			"0a": #User id
				_dataset = _get_dataset_from_line_data(i, "0a")
				_data_game_level.user_id = float(_dataset[1])
			"0v": #Level version
				_dataset = _get_dataset_from_line_data(i, "0v")
				_data_game_level.level_version = str(_dataset[1])
			"1a": #Level name
				_dataset = _get_dataset_from_line_data(i, "1a")
				_data_game_level.level_name = str(_dataset[1])
			"4a": #Username
				_dataset = _get_dataset_from_line_data(i, "4a")
				_data_game_level.user_name = str(_dataset[1])
			"4b": #User icon (portrait)
				_dataset = _get_dataset_from_line_data(i, "4b")
				_data_game_level.user_icon_id = float(_dataset[1])
			"1b": #Sliding
				_dataset = _get_dataset_from_line_data(i, "1b")
				if not (
					_dataset[0] == "a" or
					_dataset[0] == "b" or
					_dataset[0] == "c"
				): #Must not be either '1ba', '1bb', or '1bc'
					_data_game_level.sliding = float(_dataset[1])
			"1c": #Charge shot enabled
				_dataset = _get_dataset_from_line_data(i, "1c")
				if not (_dataset[0] == "a"):
					_data_game_level.charge_shot_enable = float(_dataset[1])
			"1d": #Charge shot type
				_dataset = _get_dataset_from_line_data(i, "1d")
				_data_game_level.charge_shot_type = float(_dataset[1])
			"1e": #Default bg color id
				_dataset = _get_dataset_from_line_data(i, "1e")
				_data_game_level.default_background_color = float(_dataset[1])
			"1f": #Boss portrait
				_dataset = _get_dataset_from_line_data(i, "1f")
				_data_game_level.boss_portrait = float(_dataset[1])
			"1k": #Weapon slots
				_dataset = _get_dataset_from_line_data(i, "1k")
				_data_game_level.weapons[int(_dataset[0])] = int(_dataset[1])
			"1l": #Level track ID
				_dataset = _get_dataset_from_line_data(i, "1l")
				_data_game_level.music_track_id = float(_dataset[1])
			"1m": #Level music (game number)
				_dataset = _get_dataset_from_line_data(i, "1m")
				_data_game_level.music_game_id = float(_dataset[1])
			"1p": #Default bg color id
				_dataset = _get_dataset_from_line_data(i, "1p")
				_data_game_level.val_p = float(_dataset[1])
			"1q": #Default bg color id
				_dataset = _get_dataset_from_line_data(i, "1q")
				_data_game_level.val_q = float(_dataset[1])
			"1r": #Default bg color id
				_dataset = _get_dataset_from_line_data(i, "1r")
				_data_game_level.val_r = float(_dataset[1])
			"1s": #Default bg color id
				_dataset = _get_dataset_from_line_data(i, "1s")
				_data_game_level.val_s = float(_dataset[1])
		match i.left(3):
			"1ba": #double damage
				_dataset = _get_dataset_from_line_data(i, "1ba")
				_data_game_level.double_damage = float(_dataset[1])
			"1ca": #proto strike
				_dataset = _get_dataset_from_line_data(i, "1ca")
				_data_game_level.proto_strike = float(_dataset[1])
			"1bb": #double jump
				_dataset = _get_dataset_from_line_data(i, "1bb")
				_data_game_level.double_jump = float(_dataset[1])
			"1cc": #charge broom
				_dataset = _get_dataset_from_line_data(i, "1cc")
				_data_game_level.charge_broom = float(_dataset[1])
			"1cb": #dodge roll
				_dataset = _get_dataset_from_line_data(i, "1cb")
				_data_game_level.dodge_roll = float(_dataset[1])
			"1bc": #bosses count
				_dataset = _get_dataset_from_line_data(i, "1bc")
				_data_game_level.bosses_count = float(_dataset[1])
		
		#Boss data
		match i.left(3):
			"1xc":
				_dataset = _get_dataset_from_line_data(i, "1xc")
				temp_boss_code_data._1xc = float(_dataset[1])
			"1yc":
				_dataset = _get_dataset_from_line_data(i, "1yc")
				temp_boss_code_data._1yc = float(_dataset[1])
			"1ga":
				_dataset = _get_dataset_from_line_data(i, "1ga")
				temp_boss_code_data._1ga = float(_dataset[1])
			"1ha":
				_dataset = _get_dataset_from_line_data(i, "1ha")
				temp_boss_code_data._1ha = float(_dataset[1])
			"1ua":
				_dataset = _get_dataset_from_line_data(i, "1ua")
				temp_boss_code_data._1ua = float(_dataset[1])
			"1uo":
				_dataset = _get_dataset_from_line_data(i, "1uo")
				temp_boss_code_data._1uo = float(_dataset[1])
			"1va":
				_dataset = _get_dataset_from_line_data(i, "1va")
				temp_boss_code_data._1va = float(_dataset[1])
			"1xa":
				_dataset = _get_dataset_from_line_data(i, "1xa")
				temp_boss_code_data._1xa = float(_dataset[1])
			"1za":
				_dataset = _get_dataset_from_line_data(i, "1za")
				temp_boss_code_data._1za = float(_dataset[1])
			"1zb":
				_dataset = _get_dataset_from_line_data(i, "1zb")
				temp_boss_code_data._1zb = float(_dataset[1])
		match i.left(2):
			"1g":
				_dataset = _get_dataset_from_line_data(i, "1g")
				if not _dataset[0].left(1) == "a":
					temp_boss_code_data._1g = float(_dataset[1])
			"1h":
				_dataset = _get_dataset_from_line_data(i, "1h")
				if not _dataset[0].left(1) == "a":
					temp_boss_code_data._1h = float(_dataset[1])
			"1i":
				_dataset = _get_dataset_from_line_data(i, "1i")
				temp_boss_code_data._1i = float(_dataset[1])
			"1j":
				_dataset = _get_dataset_from_line_data(i, "1j")
				temp_boss_code_data._1j = float(_dataset[1])
			"1n":
				_dataset = _get_dataset_from_line_data(i, "1n")
				temp_boss_code_data._1n = float(_dataset[1])
			"1o":
				_dataset = _get_dataset_from_line_data(i, "1o")
				temp_boss_code_data._1o = float(_dataset[1])
				temp_boss_code_data.boss_index = int(_dataset[0])
				_build_from_code_data(temp_boss_code_data)
				#Create a new one if there are one more bosses.
				temp_boss_code_data = TempBossCodeData.new().onLayer(z)
			"1u":
				_dataset = _get_dataset_from_line_data(i, "1u")
				if not (_dataset[0].left(1) == "a" or _dataset[0].left(1) == "o"):
					temp_boss_code_data._1u = float(_dataset[1])
			"1v":
				_dataset = _get_dataset_from_line_data(i, "1v")
				if not _dataset[0].left(1) == "a":
					temp_boss_code_data._1v = float(_dataset[1])
			"1w":
				_dataset = _get_dataset_from_line_data(i, "1w")
				temp_boss_code_data._1w = float(_dataset[1])
			"1x":
				_dataset = _get_dataset_from_line_data(i, "1x")
				if not (_dataset[0].left(1) == "a" or _dataset[0].left(1) == "c"):
					temp_boss_code_data._1x = float(_dataset[1])
			"1z":
				_dataset = _get_dataset_from_line_data(i, "1z")
				if not (_dataset[0].left(1) == "a" or _dataset[0].left(1) == "b"):
					temp_boss_code_data._1z = float(_dataset[1])
		
		#Active screens
		match i.left(2):
			"2a":
				_dataset = _get_dataset_from_line_data(i, "2a")
				if float(_dataset[2]) == 1.0:
					_data_active_screen_positions.append(Vector2(float(_dataset[0]), float(_dataset[1])))
		
		#Screen disconnections
		#Horizontal, and Vertical, respectively
		match i.left(2):
			"2b": #Horizontal
				_dataset = _get_dataset_from_line_data(i, "2b")
				_data_disconnected_hscreen_positions.append(Vector2(float(_dataset[0]), float(_dataset[1])))
			"2c": #Vertical
				_dataset = _get_dataset_from_line_data(i, "2c")
				_data_disconnected_vscreen_positions.append(Vector2(float(_dataset[0]), float(_dataset[1])))
		
		
		#Backgrounds
		match i.left(2):
			"2d":
				_dataset = _get_dataset_from_line_data(i, "2d")
				
				var bg = DataGameBg.new().onLayer(z)
				bg.pos = Vector2(float(_dataset[0]), float(_dataset[1]))
				bg.bg_id = float(_dataset[2])
				
				_data_bgs.append(bg)
		
		#GameObj. Be it tileset, game object, ladder, spike, etc.
		match i.left(1):
			"a":
				if temp_obj_code_data != null: #Given that this is not the first time it reads this data
					_build_from_code_data(temp_obj_code_data)
				
				temp_obj_code_data = TempObjectCodeData.new().onLayer(z)
				_dataset = _get_dataset_from_line_data(i, "a")
				temp_obj_code_data.pos = Vector2(float(_dataset[0]), float(_dataset[1]))
				temp_obj_code_data.a = float(_dataset[2])
			"b":
				_dataset = _get_dataset_from_line_data(i, "b")
				temp_obj_code_data.b = float(_dataset[2])
			"c":
				_dataset = _get_dataset_from_line_data(i, "c")
				temp_obj_code_data.c = float(_dataset[2])
			"d":
				_dataset = _get_dataset_from_line_data(i, "d")
				temp_obj_code_data.d = float(_dataset[2])
			"e":
				_dataset = _get_dataset_from_line_data(i, "e")
				temp_obj_code_data.e = float(_dataset[2])
			"f":
				_dataset = _get_dataset_from_line_data(i, "f")
				temp_obj_code_data.f = float(_dataset[2])
			"g":
				_dataset = _get_dataset_from_line_data(i, "g")
				temp_obj_code_data.g = float(_dataset[2])
			"h":
				_dataset = _get_dataset_from_line_data(i, "h")
				temp_obj_code_data.h = float(_dataset[2])
			"i":
				_dataset = _get_dataset_from_line_data(i, "i")
				temp_obj_code_data.i = float(_dataset[2])
			"j":
				_dataset = _get_dataset_from_line_data(i, "j")
				temp_obj_code_data.j = float(_dataset[2])
			"k":
				_dataset = _get_dataset_from_line_data(i, "k")
				temp_obj_code_data.k = float(_dataset[2])
			"l":
				_dataset = _get_dataset_from_line_data(i, "l")
				temp_obj_code_data.l = float(_dataset[2])
			"m":
				_dataset = _get_dataset_from_line_data(i, "m")
				temp_obj_code_data.m = float(_dataset[2])
			"n":
				_dataset = _get_dataset_from_line_data(i, "n")
				temp_obj_code_data.n = float(_dataset[2])
			"o":
				_dataset = _get_dataset_from_line_data(i, "o")
				temp_obj_code_data.o = float(_dataset[2])
			"p": # New Speed
				_dataset = _get_dataset_from_line_data(i, "p")
				temp_obj_code_data.p = float(_dataset[2])
			"q": # New Timer/option
				_dataset = _get_dataset_from_line_data(i, "q")
				temp_obj_code_data.q = float(_dataset[2])
			"r": # Who Knows
				_dataset = _get_dataset_from_line_data(i, "r")
				temp_obj_code_data.r = float(_dataset[2])
				
		if i == "[Level]":
			if temp_obj_code_data != null:
				_build_from_code_data(temp_obj_code_data)
		
	

func clear_all_data():
	_data_game_level = DataGameLevel.new()
	_data_game_objects = Array()
	_data_tiles = Array()
	_data_bgs = Array()
	_data_active_screen_positions = PoolVector2Array()

# Build data on this class. Any code data like TempObjectCodeData and
# TempBossCodeData can be used as a parameter.
func _build_from_code_data(code_data):
	if code_data is TempObjectCodeData:
		if code_data.i == BlockType.OBJECT:
			var data_game_obj = DataGameObject.new().onLayer(code_data.z)
			data_game_obj.pos = code_data.pos
			if code_data.b != BaseDataGame.MISSING_DATA:
				data_game_obj.obj_vector_x = code_data.b
			if code_data.c != BaseDataGame.MISSING_DATA:
				data_game_obj.obj_vector_y = code_data.c
			if code_data.d != BaseDataGame.MISSING_DATA:
				data_game_obj.obj_type = code_data.d
			if code_data.e != BaseDataGame.MISSING_DATA:
				data_game_obj.obj_id = code_data.e
			if code_data.f != BaseDataGame.MISSING_DATA:
				data_game_obj.obj_appearance = code_data.f
			if code_data.g != BaseDataGame.MISSING_DATA:
				data_game_obj.obj_direction = code_data.g
			if code_data.h != BaseDataGame.MISSING_DATA:
				data_game_obj.obj_timer = code_data.h
			if code_data.j != BaseDataGame.MISSING_DATA:
				data_game_obj.obj_tex_h_offset = code_data.j
			if code_data.k != BaseDataGame.MISSING_DATA:
				data_game_obj.obj_tex_v_offset = code_data.k
			if code_data.l != BaseDataGame.MISSING_DATA:
				data_game_obj.obj_unknown_parameter = code_data.l
			if code_data.m != BaseDataGame.MISSING_DATA:
				data_game_obj.obj_destination_x = code_data.m
			if code_data.n != BaseDataGame.MISSING_DATA:
				data_game_obj.obj_destination_y = code_data.n
			if code_data.o != BaseDataGame.MISSING_DATA:
				data_game_obj.obj_option = code_data.o
			if code_data.p != BaseDataGame.MISSING_DATA:
				data_game_obj.obj_new_speed = code_data.p
			if code_data.q != BaseDataGame.MISSING_DATA:
				data_game_obj.obj_new_timer_option = code_data.q
			if code_data.r != BaseDataGame.MISSING_DATA:
				data_game_obj.obj_who_knows = code_data.r
			_data_game_objects.append(data_game_obj)
		elif code_data.i == BlockType.TILE:
			var data_tile = DataGameTile.new().onLayer(code_data.z)
			data_tile.o = code_data.o
			data_tile.pos = code_data.pos
			data_tile.block_id = code_data.e
			data_tile.tileset_offset = Vector2(code_data.j, code_data.k)
			_data_tiles.append(data_tile)
		elif code_data.i == BlockType.SPIKE:
			var data_spike = DataGameSpike.new().onLayer(code_data.z)
			data_spike.o = code_data.o
			data_spike.pos = code_data.pos
			data_spike.spike_id = code_data.e
			data_spike.direction = code_data.l if code_data.l != BaseDataGame.MISSING_DATA else 0
			_data_spikes.append(data_spike)
		elif code_data.i == BlockType.LADDER:
			var data_ladder = DataGameLadder.new().onLayer(code_data.z)
			data_ladder.o = code_data.o
			data_ladder.pos = code_data.pos
			data_ladder.ladder_id = code_data.e
			_data_ladders.append(data_ladder)
		
	if code_data is TempBossCodeData:
		var data_boss = DataGameBoss.new().onLayer(code_data.z)
		data_boss.index = code_data.boss_index
		data_boss.pos = Vector2(code_data._1xc, code_data._1yc)
		data_boss.primary_weak_enabled = code_data._1ga
		data_boss.primary_weak_wp_slot_id = code_data._1g
		data_boss.secondary_weak_enabled = code_data._1ha
		data_boss.secondary_weak_wp_slot_id = code_data._1h
		data_boss.immune_enabled = code_data._1i
		data_boss.immune_wp_slot_id = code_data._1j
		data_boss.drop_item_on_death = code_data._1ua
		data_boss.drop_item_id = code_data._1u
		data_boss.drop_key_color = code_data._1uo
		data_boss.drop_wp_on_death = code_data._1va
		data_boss.drop_mode = code_data._1v
		data_boss.drop_wp_slot_id = code_data._1w
		data_boss.change_player_enabled = code_data._1xa
		data_boss.change_player_id = code_data._1x
		data_boss.music_category = code_data._1n
		data_boss.music_id = code_data._1o
		data_boss.death_change_music_enabled = code_data._1z
		data_boss.death_change_music_category = code_data._1za
		data_boss.death_change_music_id = code_data._1zb
		
		_data_bosses.append(data_boss)

static func getGameName(id: int) -> String:
	match id:
		99:
			return "Mega Man & Bass"
		100:
			return "Mega Man Soccer"
		101:
			return "Mega Man GB I"
		102:
			return "Mega Man GB II"
		103:
			return "Mega Man GB III"
		104:
			return "Mega Man GB IV"
		105:
			return "Mega Man GB V"
		106:
			return "Power Fighters"
		107:
			return "Power Fighters 2"
		108:
			return "Battle & Chase"
		109:
			return "Wily Wars"
		120:
			return "Misc"
		199:
			return "Legacy Assets"
		UNUSED_ASSETS:
			return "Unused Assets"
		_:
			return GAME_ID_LABEL_PREFIX % id

#-------------------------------------------------
#      Connections
#-------------------------------------------------

#-------------------------------------------------
#      Private Methods
#-------------------------------------------------

# Convert a line of code like this:
# o3200,3008="9999.000000"
# ..into a dataset as follows:
# [x, y, value]
func _get_dataset_from_line_data(_line_data : String, _prefix_letter : String) -> PoolStringArray:
	var dataset : PoolStringArray
	
	_line_data = _line_data.replace(_prefix_letter, "")
	_line_data = _line_data.replace(",", ";")
	_line_data = _line_data.replace("=\"", ";")
	_line_data = _line_data.replace("\"", "")
	
	dataset = _line_data.split(";")
	
	return dataset

#-------------------------------------------------
#      Setters & Getters
#-------------------------------------------------

func get_data_game_level() -> DataGameLevel:
	return _data_game_level

func get_data_bosses() -> Array:
	return _data_bosses

func get_data_game_objects() -> Array:
	return _data_game_objects

func get_data_tiles() -> Array:
	return _data_tiles

func get_data_ladders() -> Array:
	return _data_ladders

func get_data_spikes() -> Array:
	return _data_spikes

func get_data_bgs() -> Array:
	return _data_bgs

func get_data_active_screen_positions() -> PoolVector2Array:
	return _data_active_screen_positions

func get_data_disconnected_hscreen_positions() -> PoolVector2Array:
	return _data_disconnected_hscreen_positions

func get_data_disconnected_vscreen_positions() -> PoolVector2Array:
	return _data_disconnected_vscreen_positions
