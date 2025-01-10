# GameBossPortraitData
# Written by: First

extends Reference

class_name GameBossPortraitData

"""
	Enter desc here.
"""

#-------------------------------------------------
#      Constants
#-------------------------------------------------

const UNKNOWN_ID = -999

const DATA = {
	UNKNOWN_ID : {
		"name" : "Unknown ID; Not mapped in MMLV Editor",
		"texture" : preload("res://assets/images/boss_portraits/bossportraitUnk.png")
	},
	-1 : {
		"name" : "No Boss",
		"texture" : preload("res://assets/images/boss_portraits/bossportrait1.png")
	},
	2 : {
		"name" : "Pharaoh Man",
		"texture" : preload("res://assets/images/boss_portraits/bossportrait2.png")
	},
	3 : {
		"name" : "Top Man",
		"texture" : preload("res://assets/images/boss_portraits/bossportrait3.png")
	},
	4 : {
		"name" : "Crash Man",
		"texture" : preload("res://assets/images/boss_portraits/bossportrait4.png")
	},
	5 : {
		"name" : "Cut Man",
		"texture" : preload("res://assets/images/boss_portraits/bossportrait5.png")
	},
	6 : {
		"name" : "Metal Man",
		"texture" : preload("res://assets/images/boss_portraits/bossportrait6.png")
	},
	7 : {
		"name" : "Toad Man",
		"texture" : preload("res://assets/images/boss_portraits/bossportrait7.png")
	},
	8 : {
		"name" : "Plant Man",
		"texture" : preload("res://assets/images/boss_portraits/bossportrait8.png")
	},
	10 : {
		"name" : "Spark Man",
		"texture" : preload("res://assets/images/boss_portraits/bossportrait10.png")
	},
	11 : {
		"name" : "Napalm Man",
		"texture" : preload("res://assets/images/boss_portraits/bossportrait11.png")
	},
	12 : {
		"name" : "Stone Man",
		"texture" : preload("res://assets/images/boss_portraits/bossportrait12.png")
	},
	13 : {
		"name" : "Bomb Man",
		"texture" : preload("res://assets/images/boss_portraits/bossportrait13.png")
	},
	14 : {
		"name" : "Knight Man",
		"texture" : preload("res://assets/images/boss_portraits/bossportrait14.png")
	},
	17 : {
		"name" : "Ice Man",
		"texture" : preload("res://assets/images/boss_portraits/bossportrait17.png")
	},
	18 : {
		"name" : "Time Man",
		"texture" : preload("res://assets/images/boss_portraits/bossportrait18.png")
	},
	19 : {
		"name" : "Wood Man",
		"texture" : preload("res://assets/images/boss_portraits/bossportrait19.png")
	},
	20 : {
		"name" : "Magnet Man",
		"texture" : preload("res://assets/images/boss_portraits/bossportrait20.png")
	},
	21 : {
		"name" : "Hard Man",
		"texture" : preload("res://assets/images/boss_portraits/bossportrait21.png")
	},
	22 : {
		"name" : "Bubble Man",
		"texture" : preload("res://assets/images/boss_portraits/bossportrait22.png")
	},
	23 : {
		"name" : "Skull Man",
		"texture" : preload("res://assets/images/boss_portraits/bossportrait23.png")
	},
	24 : {
		"name" : "Ring Man",
		"texture" : preload("res://assets/images/boss_portraits/bossportrait24.png")
	},
	25 : {
		"name" : "Crystal Man",
		"texture" : preload("res://assets/images/boss_portraits/bossportrait25.png")
	},
	26 : {
		"name" : "Charge Man",
		"texture" : preload("res://assets/images/boss_portraits/bossportrait26.png")
	},
	27 : {
		"name" : "Flame Man",
		"texture" : preload("res://assets/images/boss_portraits/bossportrait27.png")
	},
	28 : {
		"name" : "Wind Man",
		"texture" : preload("res://assets/images/boss_portraits/bossportrait28.png")
	},
	29 : {
		"name" : "Shade Man",
		"texture" : preload("res://assets/images/boss_portraits/bossportrait29.png")
	},
	30 : {
		"name" : "Spring Man",
		"texture" : preload("res://assets/images/boss_portraits/bossportrait30.png")
	},
	31 : {
		"name" : "Concrete Man",
		"texture" : preload("res://assets/images/boss_portraits/bossportrait31.png")
	},
	32 : {
		"name" : "Tornado Man",
		"texture" : preload("res://assets/images/boss_portraits/bossportrait32.png")
	},
	33 : {
		"name" : "Multiple Bosses",
		"texture" : preload("res://assets/images/boss_portraits/bossportrait33.png")
	},
	35 : {
		"name" : "Astro Man",
		"texture" : preload("res://assets/images/boss_portraits/bossportrait35.png")
	},
	37 : {
		"name" : "Grenade Man",
		"texture" : preload("res://assets/images/boss_portraits/bossportrait37.png")
	},
	38 : {
		"name" : "Sheep Man",
		"texture" : preload("res://assets/images/boss_portraits/bossportrait38.png")
	},
	39 : {
		"name" : "Pump Man",
		"texture" : preload("res://assets/images/boss_portraits/bossportrait39.png")
	},
	40 : {
		"name" : "Blast Man",
		"texture" : preload("res://assets/images/boss_portraits/bossportrait40.png")
	},
	41 : {
		"name" : "Bounce Man",
		"texture" : preload("res://assets/images/boss_portraits/bossportrait41.png")
	},
	42 : {
		"name" : "Quick Man",
		"texture" : preload("res://assets/images/boss_portraits/bossportrait42.png")
	},
	43 : {
		"name" : "Yamato Man",
		"texture" : preload("res://assets/images/boss_portraits/bossportrait43.png")
	},
	44 : {
		"name" : "Fire Man",
		"texture" : preload("res://assets/images/boss_portraits/bossportrait44.png")
	},
	45 : {
		"name" : "Splash Woman",
		"texture" : preload("res://assets/images/boss_portraits/bossportrait45.png")
	},
	46 : {
		"name" : "Freeze Man",
		"texture" : preload("res://assets/images/boss_portraits/bossportrait46.png")
	},
	47 : {
		"name" : "Strike Man",
		"texture" : preload("res://assets/images/boss_portraits/bossportrait47.png")
	},	
	48 : {
		"name" : "Pirate Man",
		"texture" : preload("res://assets/images/boss_portraits/bossportrait48.png")
	},
	49 : {
		"name" : "Burner Man",
		"texture" : preload("res://assets/images/boss_portraits/bossportrait49.png")
	},
	50 : {
		"name" : "Cold Man",
		"texture" : preload("res://assets/images/boss_portraits/bossportrait50.png")
	},
	51 : {
		"name" : "Punk",
		"texture" : preload("res://assets/images/boss_portraits/bossportrait51.png")
	},
	52 : {
		"name" : "Enker",
		"texture" : preload("res://assets/images/boss_portraits/bossportrait52.png")
	},
	53 : {
		"name" : "Pluto",
		"texture" : preload("res://assets/images/boss_portraits/bossportrait53.png")
	},
	54 : {
		"name" : "Yellow Devil",
		"texture" : preload("res://assets/images/boss_portraits/bossportrait54.png")
	},
	55 : {
		"name" : "Boo Beam",
		"texture" : preload("res://assets/images/boss_portraits/bossportrait55.png")
	},
#	56 : {
#		"name" : "Boo Beam",
#		"texture" : preload("res://assets/images/boss_portraits/bossportrait56.png")
#	},
#	57 : {
#		"name" : "Boo Beam",
#		"texture" : preload("res://assets/images/boss_portraits/bossportrait57.png")
#	},
	58 : {
		"name" : "Kamegoro Machine",
		"texture" : preload("res://assets/images/boss_portraits/bossportrait58.png")
	},
#	59 : {
#		"name" : "Kamegoro Machine",
#		"texture" : preload("res://assets/images/boss_portraits/bossportrait59.png")
#	},
#	60 : {
#		"name" : "Kamegoro Machine",
#		"texture" : preload("res://assets/images/boss_portraits/bossportrait60.png")
#	},
	61 : {
		"name" : "Cossack Catcher",
		"texture" : preload("res://assets/images/boss_portraits/bossportrait61.png")
	},
	62 : {
		"name" : "Wily Machine 4",
		"texture" : preload("res://assets/images/boss_portraits/bossportrait62.png")
	},
	63 : {
		"name" : "Dark Man 3",
		"texture" : preload("res://assets/images/boss_portraits/bossportrait63.png")
	},
	64 : {
		"name" : "Dark Man 4",
		"texture" : preload("res://assets/images/boss_portraits/bossportrait64.png")
	},
	65 : {
		"name" : "Big Pets",
		"texture" : preload("res://assets/images/boss_portraits/bossportrait65.png")
	},
#	66 : {
#		"name" : "DO NOT DELETE",
#		"texture" : preload("res://assets/images/boss_portraits/bossportrait66.png")
#	},
	67 : {
		"name" : "Wily Machine 6",
		"texture" : preload("res://assets/images/boss_portraits/bossportrait67.png")
	},
	69 : {
		"name" : "Galaxy Man",
		"texture" : preload("res://assets/images/boss_portraits/bossportrait69.png")
	},
	70 : {
		"name" : "Burst Man",
		"texture" : preload("res://assets/images/boss_portraits/bossportrait70.png")
	},
	71 : {
		"name" : "Tengu Man",
		"texture" : preload("res://assets/images/boss_portraits/bossportrait71.png")
	},
	72 : {
		"name" : "Jewel Man",
		"texture" : preload("res://assets/images/boss_portraits/bossportrait72.png")
	},
	73 : {
		"name" : "Nitro Man",
		"texture" : preload("res://assets/images/boss_portraits/bossportrait73.png")
	},
	74 : {
		"name" : "Fuse Man",
		"texture" : preload("res://assets/images/boss_portraits/bossportrait74.png")
	},
}

#-------------------------------------------------
#      Public Methods
#-------------------------------------------------

static func get_data(id) -> Dictionary:
	if not DATA.has(id):
		return DATA[UNKNOWN_ID]
	
	return DATA[id]

static func get_portrait_texture(id) -> Texture:
	var _data = get_data(id)
	
	return _data["texture"]

static func get_portrait_info_text(id) -> String:
	var _data = get_data(id)
	
	return _data["name"] + "\n" + "ID: " + str(id)
