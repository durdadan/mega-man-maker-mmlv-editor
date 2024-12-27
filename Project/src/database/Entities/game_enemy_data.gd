# Script_Name_Here
# Written by: JDE

extends Reference

class_name GameEnemyData

"""
	a list of the game enemies by their ID. (sorted by game)
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


const ENEMY_DATA: Dictionary = {
	0: "Met",
	1: "Octopus Battery",
	2: "Beak",
	3: "Picketman",
	4: "Screw Bomber",
	5: "Big Eye",
	45: "Footholder",
	48: "Spine",
	49: "Crazy Razy",
	52: "Watcher",
	56: "Killer Bullet",
	57: "Killer Bullet Spawner",
	58: "Tackle Fire",
	59: "Flying Shell",
	60: "Flying Shell Spawner",
	7: "Sniper Joe",
	15: "Crazy Cannon",
	16: "Batton",
	17: "Neo Met",
	18: "Robbit",
	19: "Hothead",
	21: "Telly",
	22: "Telly Spawner (Solid)",
	47: "Blocky",
	50: "Pierobot",
	51: "Croaker",
	53: "Big Fish",
	61: "Crabbot",
	158: "Crabbot",
	62: "Hot Dog",
	63: "Fly Boy",
	64: "Fly Boy Spawner",
	65: "Fan Fiend",
	66: "Shrink",
	161: "Pipi",
	162: "Pipi Spawner",
	166: "Mole",
	167: "Mole Spawner",
	170: "Lantern Fish",
	171: "Scworm",
	172: "Sniper Armor",
	173: "Atomic Chicken",
	174: "Atomic Chicken Spawner",
	199: "Telly Spawner",
	201: "Mole Spawner (Random)",
	8: "Peterchy",
	9: "Potton",
	11: "Hammer Joe",
	12: "Mechakkero",
	159: "Mechakkero",
	13: "Pole Egg",
	14: "New Shotman",
	20: "Pole",
	46: "Petit Snakey",
	67: "Komasaburo",
	68: "Hari Harry",
	69: "Cannon",
	70: "Walking Bomb",
	71: "Gyoraibo",
	72: "Yambow",
	73: "Mag Fly",
	74: "Tama",
	108: "Bubukan",
	163: "Nitron",
	175: "Elec'n",
	176: "Bomb Flier",
	177: "Hologran",
	178: "Giant Springer",
	179: "Electric Gabyoall",
	30: "Shield Attacker",
	31: "Skeleton Joe",
	32: "Super Ball Machine Jr",
	33: "Skullmet",
	34: "Togehero",
	35: "Taketento",
	36: "Gachappon",
	75: "Minoan",
	76: "Wall Blaster",
	77: "Totem Polen",
	78: "Pakatto 24",
	80: "Docron spawner",
	79: "Docron",
	81: "Mummira",
	82: "Garyoby",
	83: "Whopper",
	164: "Ladder Press",
	192: "Helipon",
	193: "Ring Ring",
	194: "Battan",
	195: "Sea Mine",
	196: "Sea Mine Spawner",
	197: "Ratton",
	23: "Crystal Joe",
	27: "Pukapelly",
	28: "Lyric",
	29: "Shield Attacker",
	37: "Kouker",
	38: "Bitter",
	39: "Train Met",
	55: "Power Muscler",
	84: "Bomb/Rock Thrown",
	85: "Metall Cannon",
	86: "Subeil",
	87: "Giree",
	88: "Giree spawner",
	89: "Tondeall",
	90: "Pukapucker",
	91: "Bounder",
	180: "Sumatran",
	181: "Bombier",
	186: "Cocco",
	187: "Jet Bomb",
	188: "Jet Bomb",
	189: "V",
	6: "Colton",
	10: "Shield Attacker",
	40: "Au Au",
	41: "Ben K",
	42: "Fire Telly",
	43: "Cannopeller",
	44: "Twin Roader",
	54: "Brain Break",
	92: "Katonbyon",
	93: "Curlinger",
	94: "SRU-21/P",
	95: "Gabgyo",
	96: "Pooker",
	97: "Cyber Gabyoall",
	99: "Yaffu",
	98: "Squidon",
	182: "Hotchkiss'n",
	183: "Molier",
	184: "Submarine Flier",
	185: "Propeller Eye",
	190: "Skull Walker",
	191: "Brown",
	100: "Tripropellan",
	101: "Icicle Teck",
	102: "Trio the Wheel",
	103: "Baccone",
	104: "Tom Daddy",
	105: "Frisk Cannon",
	106: "Gockroach S",
	107: "Gockroach S Nest",
	109: "Turbo Roader",
	110: "Kaminari Kogoro",
	111: "Cyorown",
	112: "Gobots",
	113: "Tsuranattori",
	250: "Shururun Spawner",
	125: "Shell'n",
	126: "Bunby Tank DX",
	127: "Joe Classic",
	128: "Surumaker",
	129: "Hannya Attacker",
	130: "Crunchran",
	131: "Rabbiton",
	132: "Penpen EV",
	133: "Big Telly",
	134: "Fire Met",
	135: "Fire Met Spawner",
	137: "Wall Teck",
	238: "Swim Metall DX",
	237: "Astro Zombieg",
	249: "Astro Zombieg Spawner",
	240: "Succubatton",
	24: "Petit Devil",
	26: "Caricarry",
	115: "Bombomboy",
	114: "Flower Presenter",
	116: "Fire Totem",
	117: "Okosutobon",
	118: "Diarn",
	119: "Hoohoo",
	120: "Hoohoo Spawner",
	121: "Kakinbatank",
	122: "Adamski",
	123: "Nombrellan",
	136: "Nombrellan Spawner",
	124: "Sakrets",
	198: "Bunby Catcher",
	241: "Camouflametall",
	242: "Octone",
	138: "Cargou Q",
	139: "Kaona Geeno",
	140: "Pointan",
	141: "Sola 0",
	142: "Oshitsu Osarettsu",
	143: "Numetall",
	144: "Merserker",
	145: "Bari III (Head)",
	146: "Bari III (Body)",
	147: "Mecha Pitchan",
	148: "Searchy",
	160: "Returning Machine Gun Joe",
	165: "Neo Heli Metall",
	168: "Molmole",
	169: "Molmole Spawner",
	200: "Searchy Spawner",
	202: "Molmole Spawner (Random)",
	244: "Darspider",
	247: "Suzak And Fenix",
	243: "Yonbain",
	149: "Electro Guard",
	150: "Electriri",
	151: "Electriri Spawner (Solid)",
	152: "Electriri Spawner (Edge)",
	153: "Pipetto",
	154: "Anti-Eddie",
	155: "Air Stone/Fire/Nut",
	156: "Mash Burner",
	157: "Crunch Don",
	245: "Arc Weldy",
	246: "Boyorn",
	248: "Boyorn Spawner",
	251: "Lamper",
	203: "Electric Generator",
	207: "Mokumokumo",
	204: "Plasma",
	208: "Romper",
	205: "Gori Three",
	206: "Dodonpa Cannon",
	210: "Hogale",
	211: "Hogale Spawner",
	212: "Kamikamin",
	213: "Snoler",
	235: "Mini Snowman",
	236: "Mini Snowman Spawner",
	214: "Big Telly",
	216: "Ammoner",
	224: "Oni Robo Cloud",
	225: "Oni Robo Wind",
	226: "Oni Robo",
	227: "Sydecka",
	215: "Hyoey",
	217: "Biribaree",
	218: "Piriparee",
	219: "Doncatch",
	220: "Hell Metall DX",
	221: "Metall Sniper",
	222: "Fukuhorn",
	223: "Press'N",
	228: "Cutting Wheel",
	229: "Tamp",
	230: "La Jaba",
	231: "Fankurow",
	232: "Shuhorn",
	233: "Chainsoar",
	234: "Feeber",
}

const BoneEnemies: Array = [ 31, 79, 80, 157, 190 ]

const MiniBosses: Array = [ 62, 74, 83, 98, 170, 213, 215, 224, 225, 226, 247, 251 ]

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
