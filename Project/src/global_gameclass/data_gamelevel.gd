# DataGameLevel
# Written by: First

extends BaseDataGame

class_name DataGameLevel

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

const DEFAULT_LEVEL_VERSION: String = "1.0"
const EMPTY_WEAPON_SLOT: int = -1
const DEFAULT_WEAPONS: Array = [
	0,
	EMPTY_WEAPON_SLOT,
	EMPTY_WEAPON_SLOT,
	EMPTY_WEAPON_SLOT,
	EMPTY_WEAPON_SLOT,
	EMPTY_WEAPON_SLOT,
	EMPTY_WEAPON_SLOT,
	EMPTY_WEAPON_SLOT,
	EMPTY_WEAPON_SLOT,
	EMPTY_WEAPON_SLOT,
	EMPTY_WEAPON_SLOT,
	EMPTY_WEAPON_SLOT
]

#-------------------------------------------------
#      Properties
#-------------------------------------------------

#0a
var user_id = 1.000000 

#0v
var level_version = DEFAULT_LEVEL_VERSION

#1a
var level_name = "edited level" 

#4a
var user_name = "noname" 

#4b
var user_icon_id = 1.000000 

#1b
var sliding = 1.000000

#1c
var charge_shot_enable = 1.000000 

#1ba
var double_damage = 0.000000 

#1ca
var proto_strike = 0.000000

#1bb 
var double_jump = 0.000000 

#1cc
var charge_broom = 0.000000

#1cb
var dodge_roll = 0.000000

#1d, valid values: 4, 5, 6
var charge_shot_type = 4.000000 

#1e
var default_background_color = 29.000000 

#1f
var boss_portrait = -1.000000

#1bc
var bosses_count = 0.000000

# Bosses in array data
var bosses : Array

#1k*
var weapons : PoolIntArray = DEFAULT_WEAPONS

#1l
var music_track_id = 1.000000

#1m
var music_game_id = 1.000000

#1p
var val_p = 0.000000

#1q
var val_q = 0.000000

#1r
var val_r = 0.000000

#1s
var val_s = 0.000000

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

#-------------------------------------------------
#      Private Methods
#-------------------------------------------------

#-------------------------------------------------
#      Setters & Getters
#-------------------------------------------------
