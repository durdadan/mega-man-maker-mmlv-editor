# Script_Name_Here
# Written by: JDE

extends Reference

class_name GameObjectData

"""
	a list of the game objects by their ID.
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

const GIMMICK_DATA: Dictionary = {
	15: "Checkpoint (old)",
	46: "Checkpoint",
	16: "Water",
	5: "Yoku Block",
	56: "Reflecting Yoku Block",
	17: "Time Bomb",
	18: "Time Bomb",
	26: "Teleporter",
	65: "Teleporter",
	27: "Weapon Block",
	28: "Weapon Barrier",
	32: "Key",
	33: "Key Door",
	45: "Cracked Block",
	162: "Gori Three Rock",
	49: "Push Block",
	63: "Boss Suppressor",
	76: "Weapon Barrier",
	80: "Key Door",
	99: "Music Changer",
	127: "Magnetic Ceiling",
	128: "Magnetic Ceiling (conveyor)",
	129: "On Switch Magnetic Ceiling",
	130: "Off Switch Magnetic Ceiling",
	148: "Health Modifier",
	149: "Weapon Energy Modifier",
	166: "Heavier Push Block",
	157: "Mobile Push Block",
	160: "Magnetic Coil",
	158: "Lighter Push Block",
	171: "Section Wide Liquid",
	161: "Liquid Height Marker",
	164: "Liquid Height Crystal",
	184: "Dropper",
	185: "Dropper Conduit (Middle)",
	186: "Dropper Conduit (Top)",
	187: "Junk Dropper",
	188: "Junk Dropper Conduit (Middle)",
	189: "Junk Dropper Conduit (Top)",
	180: "Health Block Checker",
	181: "Weapon Energy Block Checker",
	198: "Key Block Checker",
	199: "Lava Hover Saver",
	200: "Lava Hover",
	201: "Water Hover",
	246: "Plushie",
	249: "Plushie",
	195: "Arrows",
	202: "Arrows",
	205: "PU Block",
	206: "MM3 Trash Block",
	211: "MM11 Brick Block",
	208: "MM11 Breakable Block",
	209: "GB3 Trash Block",
	210: "GB5 Can",
	222: "Water Currents",
	3: "Fire Beam",
	4: "Elec Beam",
	29: "Flame Pillar",
	163: "Flame Pillar",
	82: "On/Off Switch",
	83: "On Switch Block",
	84: "Off Switch Block",
	85: "On Switch Spike",
	86: "Off Switch Spike",
	87: "On Switch Ladder",
	88: "Off Switch Ladder",
	91: "On/Off Switch Timer",
	93: "Super Arm Block",
	101: "Fire Wave Spawner",
	102: "Fire Wave Spawner",
	103: "Fire Wave Redirector",
	104: "Fire Wave Redirector",
	111: "Fire wave Shaft",
	112: "Fire wave Shaft",
	123: "Fire Wave Spawner (Edge)",
	124: "Fire Wave Spawner (Edge)",
	2: "Conveyor Belt",
	73: "Conveyor Belt",
	6: "Force Beam",
	7: "Red Force Beam",
	8: "Green Force Beam",
	30: "Press",
	31: "Crash lift",
	50: "Force Beam",
	51: "Red Force Beam",
	52: "Green Force Beam",
	94: "Acid Drop",
	126: "Acid Drop",
	243: "Water Drop",
	74: "Moving Cog",
	0: "Lift Platform",
	1: "Drop Platform",
	34: "Wanaan",
	68: "Wanaan",
	35: "Magnet",
	95: "Needle Press",
	96: "Needle Press",
	97: "Top Lift Spawner",
	98: "Top Lift",
	9: "Dust Block",
	10: "Cossack Platform",
	36: "Ring Platform",
	40: "Coil Platform",
	37: "Quicksand",
	109: "Fork Block",
	11: "Falling Platform",
	12: "Rotating Platform",
	67: "Rotating Platform",
	38: "Rolling Drill",
	41: "Rolling Drill Spawner",
	39: "Teckyun",
	105: "Steam",
	106: "Steam",
	245: "Steam",
	190: "Low Grav Section",
	13: "Spring",
	14: "Flip Platform",
	42: "Oil",
	43: "Fan",
	92: "Plantform",
	100: "Spike Platform",
	114: "Spike Platform",
	119: "Ice Barrier",
	120: "Ice Barrier",
	44: "Floor Light",
	47: "Jet Platform",
	48: "Punch Block",
	231: "Cracked Ice Platform",
	232: "Invisible Tile",
	240: "Invisible Platform",
	239: "Tel Tel",
	244: "Tel Tel Fountain",
	237: "Invisible Decoration",
	233: "Invisible Ladder",
	234: "Invisible Spike",
	219: "Burst Water",
	59: "Astro button",
	61: "Astro reset button",
	60: "Astro gate",
	192: "Astro button",
	193: "Astro reset button",
	62: "Thunder Claw pole",
	64: "TNT",
	151: "Astro gate",
	220: "Count Bomb CD",
	241: "Lift Elevator",
	242: "Lift Elevator Mark",
	224: "Count Bomb CD Slow",
	225: "Shupponpon Front Door",
	226: "Shupponpon Side Door",
	227: "Shupponpon Rail",
	235: "Floating Spike",
	236: "Floating Bubble Generator",
	229: "Flipping Doors",
	230: "Flipping Doors",
	53: "Rain",
	54: "Illusian",
	55: "Illusian Block",
	57: "Bokazurah",
	58: "Bokazurah Block",
	66: "Magma Beam Generator",
	89: "Splash Platform",
	107: "Concrete Lift",
	110: "Hornet Roll",
	221: "Anti Grav Section",
	207: "Anti Grav Field",
	69: "Sheep Block",
	70: "Sheep Spike",
	71: "Chill Block",
	72: "Moving Elevator",
	81: "Moving Elevator Vertical Stop",
	108: "Soccer Ball Jet",
	113: "Jumpthrough platform",
	133: "Target",
	136: "Target",
	139: "Target",
	150: "Target Rail",
	179: "Level Target",
	78: "Spinning Wheel",
	77: "Chemical Solution",
	79: "Fire Wall",
	121: "Fire Wall Modifier",
	90: "Bouncy Ball",
	228: "Bouncy Ball",
	115: "Fuse rail",
	117: "Fuse Laser Spawner",
	125: "Fuse Laser Crawler",
	122: "Fuse Laser Exit",
	116: "Fuse Crosser",
	118: "Fuse Xtender",
	147: "Hotplate",
	159: "Fuse laser Turret",
	212: "Blast Sensor",
	213: "Blast Sensor On/Off",
	247: "Blast Wire",
	248: "Blast Wire On/Off",
	214: "Blast Wire",
	215: "Blast Wire On/Off",
	216: "Blast Crate",
	217: "Falling Blast Crate",
	218: "Blast Big Crate",
	223: "Blast Scrapped Car",
	132: "Dynamo Conveyor",
	131: "Rotating Spike Box",
	167: "Bell Ringer",
	134: "Ice Block (Old)",
	204: "Ice Block",
	135: "Ice Block Spawner",
	137: "Explosive Crates",
	140: "Kamikamin Chest",
	141: "Floating Balloon Spawner",
	142: "Floating Balloon",
	138: "Moving Light",
	143: "Moving Light Redirector",
	144: "Moving Light Terminator",
	145: "Moving Light Darkness",
	155: "Oni Cloud Generator",
	156: "Oni Wind Generator",
	146: "Pressurized Cracked Block",
	152: "Icicle",
	153: "Melting Snow Block",
	154: "Alternating Timing Conveyor",
	168: "Super Cutter",
	169: "Shifting Falling Stone",
	170: "Guts Hover",
	165: "Move Hover",
	172: "Girder (Small)",
	173: "Girder",
	174: "Girder (Medium)",
	175: "Girder (Large)",
	176: "Water fall spawner",
	191: "Water fall spawner",
	177: "Uranus Platform",
	178: "Napalm Fire",
	182: "Pluto Block",
	196: "Magnet Well",
	197: "Gravity Field",
	203: "Gravity Indicator",
}

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

#-------------------------------------------------
#      Private Methods
#-------------------------------------------------

#-------------------------------------------------
#      Setters & Getters
#-------------------------------------------------
