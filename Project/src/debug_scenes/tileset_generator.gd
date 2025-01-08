# TilesetGenerator
# Written by: First

tool
extends Node

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

const OUTPUT_TILESET_RES_NAME = "MMM Tileset"
const OUTPUT_SPIKE_TILESET_RES_NAME = "MMM Spike Tileset"
const OUTPUT_LADDER_TILESET_RES_NAME = "MMM Ladder Tileset"
const OUTPUT_BG_TILESET_RES_NAME = "MMM Bg Tileset"
const TILE_SIZE: Vector2 = 16.0 * Vector2.ONE

const GEN_TITLE = "Tileset Generator"
const GEN_TILESET_SUCCESS_MSG = str(
	"Generated successfully!\n\n",
	"For the next step, you might want to save the output as a resource file to the assets folder.\n",
	"Please save the tileset as a resource file to res://assets/tilesets/ and assign it to a tilemap object GameTilemapDrawer.\n\n",
	"NOTE: Tileset Output might not be updated (visual bug?). You might need to click on it."
)
const GEN_SPIKE_TILESET_SUCCESS_MSG = str(
	"Generated successfully!\n\n",
	"Todo: Add instructions what to do next."
)
const GEN_LADDER_TILESET_SUCCESS_MSG = str(
	"Generated successfully!\n\n",
	"Todo: Add instructions what to do next."
)
const GEN_BG_TILESET_SUCCESS_MSG = str(
	"Generated successfully!\n\n",
	"For the next step, you might want to save the output as a resource file to the assets folder.\n",
	"Please save the tileset as a resource file to res://assets/bg/ and assign it to a tilemap object GameBgTilemapDrawer.\n\n",
	"NOTE: Tileset Output might not be updated (visual bug?). You might need to click on it."
)

#-------------------------------------------------
#      Properties
#-------------------------------------------------

export (bool) var create_tileset setget set_create_tileset
export (bool) var create_bg_tileset setget set_create_bg_tileset
export (bool) var create_spike_tileset setget set_create_spike_tileset
export (bool) var create_ladder_tileset setget set_create_ladder_tileset

var tileset_output: TileSet

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

func generate_tileset() -> void:
	tileset_output = TileSet.new()
	for i in GameTileSetData.TILESET_DATA.keys():
		#generate each subtiles
		var idx_j : int = 0
		for j in GameTileSetData.SUBTILE_POSITION_IDS.keys():
			var subtile_name: String = GameTileSetData.TILESET_DATA.get(i)
			var tile_id: int = i * GameTileSetData.SUBTILE_COUNT + idx_j
			tileset_output.create_tile(tile_id)
			tileset_output.tile_set_texture(tile_id,
				load("res://assets/images/tilesets/" + subtile_name))
			tileset_output.tile_set_region(tile_id,
				Rect2(j - GameTileSetData.SUBTILE_TEXTURE_OFFSETS.get(i, Vector2.ONE), TILE_SIZE))
			tileset_output.tile_set_name(tile_id, subtile_name + "_" + str(idx_j))
			tileset_output.tile_set_occluder_offset(tile_id,
				float(GameTileSetData.TILE_GAME_IDS[i] == GameDataBuilder.UNUSED_ASSETS) * Vector2.ONE)
			idx_j += 1
	tileset_output.resource_name = OUTPUT_TILESET_RES_NAME
	_finalize_generation(GEN_TILESET_SUCCESS_MSG)

func generate_spike_tileset():
	tileset_output = TileSet.new()
	for i in GameSpikeData.SPIKE_DATA.keys():
		#generate each subtiles
		var idx_j : int = 0
		for j in GameSpikeData.SUBTILE_ID_POSITIONS.keys():
			var tile_id: int = i * GameSpikeData.SPIKE_TILE_COUNT + idx_j
			tileset_output.create_tile(tile_id)
			tileset_output.tile_set_texture(tile_id, load("res://assets/images/spikes/" + GameSpikeData.SPIKE_DATA.get(i)))
			tileset_output.tile_set_region(tile_id, Rect2(GameSpikeData.SUBTILE_ID_POSITIONS.get(j) , Vector2(16, 16)))
			tileset_output.tile_set_name(tile_id, GameSpikeData.SPIKE_DATA.get(i) + "_" + str(idx_j))
			tileset_output.tile_set_occluder_offset(tile_id,
				float(GameSpikeData.SPIKE_GAME_IDS[i] == GameDataBuilder.UNUSED_ASSETS) * Vector2.ONE)
			idx_j +=1
		
	
	tileset_output.resource_name = OUTPUT_SPIKE_TILESET_RES_NAME
	
	_finalize_generation(GEN_SPIKE_TILESET_SUCCESS_MSG)

func generate_ladder_tileset():
	tileset_output = TileSet.new()
	
	for i in GameLadderData.LADDER_DATA.keys():
		tileset_output.create_tile(i)
		tileset_output.tile_set_texture(i, load("res://assets/images/ladders/" + GameLadderData.LADDER_DATA.get(i)))
		tileset_output.tile_set_name(i, GameLadderData.LADDER_DATA.get(i) + "_" + str(i))
		tileset_output.tile_set_occluder_offset(i,
			float(GameLadderData.LADDER_GAME_IDS[i] == GameDataBuilder.UNUSED_ASSETS) * Vector2.ONE)
	
	tileset_output.resource_name = OUTPUT_LADDER_TILESET_RES_NAME
	
	_finalize_generation(GEN_LADDER_TILESET_SUCCESS_MSG)

func generate_bg_tileset():
	tileset_output = TileSet.new()
	
	for i in GameBgData.BG_DATA.keys():
		tileset_output.create_tile(i)
		tileset_output.tile_set_texture(i, load("res://assets/images/bg/" + GameBgData.BG_DATA.get(i)))
		tileset_output.tile_set_name(i, GameBgData.BG_DATA.get(i) + "_" + str(i))
		tileset_output.tile_set_occluder_offset(i,
			float(GameBgData.BG_GAME_IDS[i] == GameDataBuilder.UNUSED_ASSETS) * Vector2.ONE)
		tileset_output.tile_set_material(i, GameBgData.BG_MATERIALS.get(i))
	
	tileset_output.resource_name = OUTPUT_BG_TILESET_RES_NAME
	
	_finalize_generation(GEN_BG_TILESET_SUCCESS_MSG)

#-------------------------------------------------
#      Connections
#-------------------------------------------------

#-------------------------------------------------
#      Private Methods
#-------------------------------------------------

#-------------------------------------------------
#      Setters & Getters
#-------------------------------------------------

func set_create_tileset(val : bool):
	if not val:
		return
	
	generate_tileset()

func set_create_bg_tileset(val : bool):
	if not val:
		return
	
	generate_bg_tileset()

func set_create_spike_tileset(val : bool):
	if not val:
		return
	
	generate_spike_tileset()

func set_create_ladder_tileset(val : bool):
	if not val:
		return
	
	generate_ladder_tileset()

func _finalize_generation(msg: String) -> void:
	OS.alert(msg, GEN_TITLE)
	property_list_changed_notify()

func _get_property_list() -> Array:
	return [ {
		type = TYPE_OBJECT,
		name = "tileset_output",
		hint_string = "TileSet",
		hint = PROPERTY_HINT_RESOURCE_TYPE,
		usage = PROPERTY_USAGE_EDITOR
	} ]
