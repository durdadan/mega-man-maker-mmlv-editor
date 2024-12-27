# TilemapDrawer
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

func draw_from_game_data_tiles(tiles_data : Array = [],
		_level_version: String = DataGameLevel.DEFAULT_LEVEL_VERSION):
	for i in tiles_data:
		i = i as DataGameTile
		if i.block_id == int(round(BaseDataGame.MISSING_DATA)):
			i.block_id = 0
		set_cellv(world_to_map(i.pos), (i.block_id * GameTileSetData.SUBTILE_COUNT) + \
			GameTileSetData.SUBTILE_POSITION_IDS.get(i.tileset_offset), false, false, false,
				float(!i.should_retain_o) * Vector2.ONE)

#-------------------------------------------------
#      Connections
#-------------------------------------------------

#-------------------------------------------------
#      Private Methods
#-------------------------------------------------

#-------------------------------------------------
#      Setters & Getters
#-------------------------------------------------
