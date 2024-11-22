# Script_Name_Here
# Written by: 

extends Reference

class_name GameLadderData

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

const LADDER_DATA = {
	6 : "sprLadderCut",
	10 : "sprLadderElec",
	11 : "sprLadderBomb",
	12 : "sprLadderFire",
	13 : "sprLadderMM1Wily1",
	14 : "sprLadderMM1Wily2",
	16 : "sprLadderWood",
	17 : "sprLadderCrash",
	18 : "sprLadderMM2Wily1",
	19 : "sprLadderMM2Wily2",
	20 : "sprLadderMM2Wily4",
	97 : "sprLadderSpark",
	98 : "sprLadderNeedle",
	99 : "sprLadderTop",
	100 : "sprLadderMagnet",
	101 : "sprLadderHard",
	102 : "sprLadderGemini",
	103 : "sprLadderMM3Wily4",
	104 : "sprLadderSkull",
	105 : "sprLadderBright",
	106 : "sprLadderDust",
	107 : "sprLadderCossack1",
	108 : "sprLadderCossack4",
	109 : "sprLadderMM4Wily2",
	110 : "sprLadderStone",
	111 : "sprLadderCrystal",
	112 : "sprLadderNapalm",
	113 : "sprLadderGyro",
	114 : "sprLadderStar",
	115 : "sprLadderCharge",
	116 : "sprLadderProto1",
	117 : "sprLadderProto2",
	118 : "sprLadderProto3",
	119 : "sprLadderBlizzard",
	120 : "sprLadderWind",
	121 : "sprLadderFlame",
	122 : "sprLadderTomahawk",
	123 : "sprLadderCentaur",
	124 : "sprLadderKnight",
	125 : "sprLadderPlant",
	126 : "sprLadderMrX1",
	127 : "sprLadderMrX4",
	128 : "sprLadderMM6Wily1",
	#365 : "LadMM2WoodAlt"
	365 : "sprLadderHeat",
	366 : "sprLadderNeedle2",
	367 : "sprLadderShadow",
	368 : "sprLadderMM3Wily1",
	369 : "sprLadderMM3Wily2",
	370 : "sprLadderRing",
	371 : "sprLadderDive",
	372 : "sprLadderDive2",
	373 : "sprLadderDrill",
	374 : "sprLadderCossack1_2",
	375 : "sprLadderCossack3",
	376 : "sprLadderMM4Wily3",
	377 : "sprLadderGravity",
	378 : "sprLadderMM5Wily1",
	379 : "sprLadderMM5Wily2",
	380 : "sprLadderWind2",
	381 : "sprLadderTomahawk2",
	382 : "sprLadderCentaur2",
	383 : "sprLadderCentaur3",
	384 : "sprLadderKnight2",
	385 : "sprLadderYamato",
	386 : "sprLadderMrX3",
#	387 : "sprLadderMM6Wily1_2",
	388 : "sprLadderMM6Wily3",
	389 : "sprLadderSpring",
	390 : "sprLadderFreeze",
	391 : "sprLadderSlash",
	392 : "sprLadderJunk",
	393 : "sprLadderShade",
	394 : "sprLadderBurst",
	395 : "sprLadderTurbo",
	396 : "sprLadderCloud",
	397 : "sprLadderMM7Wily1",
	398 : "sprLadderMM7Wily2",
	399 : "sprLadderMM7Wily3",
	400 : "sprLadderAstro",
	401 : "sprLadderFrost",
	402 : "sprLadderSword",
	403 : "sprLadderSword2",
	404 : "sprLadderGrenade",
	405 : "sprLadderAqua",
	406 : "sprLadderSearch",
	407 : "sprLadderSearch2",
	408 : "sprLadderClown",
	409 : "sprLadderDuo",
	410 : "sprLadderMM8Wily2",
	411 : "sprLadderMM8Wily3",
	412 : "sprLadderConcrete",
	413 : "sprLadderHornet",
	414 : "sprLadderPlug",
	415 : "sprLadderSplash",
	416 : "sprLadderMagma",
	417 : "sprLadderGalaxy",
	418 : "sprLadderTornado",
	419 : "sprLadderMM9Wily1",
	420 : "sprLadderMM9Wily2",
	421 : "sprLadderMM9Wily3",
	422 : "sprLadderFake",
	423 : "sprLadderMM9Endless",
	424 : "sprLadderMM9Endless2",
	425 : "sprLadderMM9Endless3",
	428 : "sprLadderMM9Wily2Alt",
	429 : "sprLadderJunk2",
	430 : "sprLadderCloud2",
	431 : "sprLadderMM9Wily1_2",
	434 : "sprLadderSnake",
	573 : "sprLadderBlade",
	574 : "sprLadderSolar",
	575 : "sprLadderSolarAlt",
	576 : "sprLadderSheep",
	577 : "sprLadderPump",
	578 : "sprLadderPumpAlt",
	579 : "sprLadderStrike",
	580 : "sprLadderNitro",
	581 : "sprLadderChill",
	582 : "sprLadderChillAlt",
	583 : "sprLadderChillAlt2",
	584 : "sprLadderChillAlt3",
	585 : "sprLadderMM10Wily1",
	586 : "sprLadderMM10Wily2",
	587 : "sprLadderMM10Wily3",
	588 : "sprLadderMM10Wily3Alt",
	589 : "sprLadderMM10Wily5",
	590 : "sprLadderMM10Wily5_2",
	591 : "sprLadderPunk",
	592 : "sprLadderBallade",
	593 : "sprLadderEndless",
	594 : "sprLadderChallenge",
	659 : "sprLadderBlock",
	660 : "sprLadderAcid",
	661 : "sprLadderBlast",
	662 : "sprLadderBounce",
	663 : "sprLadderTundra",
	664 : "sprLadderImpact",
	665 : "sprLadderTorch",
	666 : "sprLadderFuse",
	667 : "sprLadderMM11Wily1",
	668 : "sprLadderMM11Wily2",
	669 : "sprLadderLight",
	704 : "sprLadderBomb1PU",
	705 : "sprLadderBuilder1PU",
	706 : "sprLadderBuilder2PU",
	707 : "sprLadderBuilder3PU",
	708 : "sprLadderBuilder4PU",
	709 : "sprLadderChallengePU",
	710 : "sprLadderCut1PU",
	711 : "sprLadderElec1PU",
	712 : "sprLadderFire1PU",
	713 : "sprLadderGuts1PU",
	714 : "sprLadderIce1PU",
	715 : "sprLadderIntroPU",
	716 : "sprLadderOilPU",
	717 : "sprLadderTimePU",
	718 : "sprLadderMM1PUWily1PU",
	719 : "sprLadderMM1PUWily2PU",
	720 : "sprLadderMM1PUWily3PU",
	721 : "sprLadderMM1PUWily4PU",
	867 : "sprLadderMmbIntro",
	873 : "sprLadderCold",
	878 : "sprLadderBurner",
	883 : "sprLadderPirate",
	886 : "sprLadderGround",
	892 : "sprLadderTengu",
	897 : "sprLadderMagic",
	903 : "sprLadderMmbAstro",
	908 : "sprLadderDynamo",
	912 : "sprLadderKing1",
	915 : "sprLadderKing2_1",
	922 : "sprLadderKing2_2",
	923: "sprLadderKing2_3",
	924: "sprLadderGBICut",
	925: "sprLadderGBIElec",
	926: "sprLadderGBIFire",
	927: "sprLadderGBIIce",
	928: "sprLadderGBIWily",
	929: "sprLadderGBIIClash",
	930: "sprLadderGBIIClashAlt",
	931: "sprLadderGBIIIDive",
	932: "sprLadderGBIIMetal",
	933: "sprLadderGBIIMetalAlt",
	934: "sprLadderGBIIWood",
	935: "sprLadderGBIIWoodAlt",
	936: "sprLadderGBIIWily",
	937: "sprLadderGBIIWilyAlt",
	938: "sprLadderGBIIIDust",
	939: "sprLadderGBIIIGemini",
	940: "sprLadderGBIIISkull",
	941: "sprLadderGBIIISnake",
	942: "sprLadderGBIIISpark",
	943: "sprLadderGBIIIWily",
	944: "sprLadderGBIVBright",
	945: "sprLadderGBIVCharge",
	946: "sprLadderGBIVCrystal",
	947: "sprLadderGBIVNapalm",
	948: "sprLadderGBIVRing",
	949: "sprLadderGBIVStone",
	950: "sprLadderGBIVToad",
	951: "sprLadderGBIVWily",
	952: "sprLadderGBVJupiter",
	953: "sprLadderGBVMars",
	954: "sprLadderGBVMercury",
	1103: "sprLadderGBVNeptune",
	1104: "sprLadderGBVNeptuneAlt",
	1105: "sprLadderGBVPluto",
	1106: "sprLadderGBVSaturn" ,
	1107: "sprLadderGBVUranus",
	1108: "sprLadderGBVVenus",
	1109: "sprLadderGBVWily",
	1229: "sprLadderGBIIIDiveAlt",
	1230: "sprLadderSearch3",
	# 1.9.3.1
	364 : "sprLadderWood2",
	387 : "sprLadderMM6Wily1_2",
	1639: "sprLadderGrenade_Overwrite",
	1410: "sprLadderMM9Wily3Alt",
	1411: "sprLadderMM9Wily2Alt2",
	1412: "sprLadderMM9Wily2Alt3",
	1413: "sprLadderElec1PUAlt",
	1414: "sprLadderElec1PUAlt2",
	1415: "sprLadderBlastAlt",
	1416: "sprLadderAcidAlt",
	1417: "sprLadderAcidAlt2",
	1418: "sprLadderBlockAlt",
	1419: "sprLadderBlockAlt2",
	1420: "sprLadderBounceAlt",
	1421: "sprLadderFuseAlt",
	1422: "sprLadderTorchAlt",
	1423: "sprLadderMM11Wily1Alt",
	1424: "sprLadderMM11Wily2Alt",
	1425: "sprLadderChillAlt4",
	1426: "sprLadderSolarAlt2",
	1427: "sprLadderOilPUAlt",
	1428: "sprLadderMM1PUWily1PUAlt",
	1429: "sprLadderMM1PUWily1PUAlt2",
	1430: "sprLadderMM1PUWily1PUAlt3",
	1431: "sprLadderMM1PUWily1PUAlt4",
	1432: "sprLadderMM1PUWily2PUAlt",
	1433: "sprLadderMM1PUWily2PUAlt2",
}

const LADDER_GAME_IDS = {
	6 : 1,
	10 : 1,
	11 : 1,
	12 : 1,
	13 : 1,
	14 : 1,
	16 : 2,
	17 : 2,
	18 : 2,
	19 : 2,
	20 : 2,
	97 : 3,
	98 : 3,
	99 : 3,
	100 : 3,
	101 : 3,
	102 : 3,
	103 : 3,
	104 : 4,
	105 : 4,
	106 : 4,
	107 : 4,
	108 : 4,
	109 : 4,
	110 : 5,
	111 : 5,
	112 : 5,
	113 : 5,
	114 : 5,
	115 : 5,
	116 : 5,
	117 : 5,
	118 : 5,
	119 : 6,
	120 : 6,
	121 : 6,
	122 : 6,
	123 : 6,
	124 : 6,
	125 : 6,
	126 : 6,
	127 : 6,
	128 : 6,
	#365 : 2,
	365 : 2,
	366 : 3,
	367 : 3,
	368 : 3,
	369 : 3,
	370 : 4,
	371 : 4,
	372 : 4,
	373 : 4,
	374 : 4,
	375 : 4,
	376 : 4,
	377 : 5,
	378 : 5,
	379 : 5,
	380 : 6,
	381 : 6,
	382 : 6,
	383 : 6,
	384 : 6,
	385 : 6,
	386 : 6,
#	387 : 6,
	388 : 6,
	389 : 7,
	390 : 7,
	391 : 7,
	392 : 7,
	393 : 7,
	394 : 7,
	395 : 7,
	396 : 7,
	397 : 7,
	398 : 7,
	399 : 7,
	400 : 8,
	401 : 8,
	402 : 8,
	403 : 8,
	404 : 8,
	405 : 8,
	406 : 8,
	407 : 8,
	408 : 8,
	409 : 8,
	410 : 8,
	411 : 8,
	412 : 9,
	413 : 9,
	414 : 9,
	415 : 9,
	416 : 9,
	417 : 9,
	418 : 9,
	419 : 9,
	420 : 9,
	421 : 9,
	422 : 9,
	423 : 9,
	424 : 9,
	425 : 9,
	428 : 9,
	429 : 7,
	430 : 7,
	431 : 9,
	434 : 3,
	573 : 10,
	574 : 10,
	575 : 10,
	576 : 10,
	577 : 10,
	578 : 10,
	579 : 10,
	580 : 10,
	581 : 10,
	582 : 10,
	583 : 10,
	584 : 10,
	585 : 10,
	586 : 10,
	587 : 10,
	588 : 10,
	589 : 10,
	590 : 10,
	591 : 10,
	592 : 10,
	593 : 10,
	594 : 10,
	659 : 11,
	660 : 11,
	661 : 11,
	662 : 11,
	663 : 11,
	664 : 11,
	665 : 11,
	666 : 11,
	667 : 11,
	668 : 11,
	669 : 11,
	704 : 1,
	705 : 1,
	706 : 1,
	707 : 1,
	708 : 1,
	709 : 1,
	710 : 1,
	711 : 1,
	712 : 1,
	713 : 1,
	714 : 1,
	715 : 1,
	716 : 1,
	717 : 1,
	718 : 1,
	719 : 1,
	720 : 1,
	721 : 1,
	867 : 99,
	873 : 99,
	878 : 99,
	883 : 99,
	886 : 99,
	892 : 99,
	897 : 99,
	903 : 99,
	908 : 99,
	912 : 99,
	915 : 99,
	922 : 99,
	923: 99,
	924: 101,
	925: 101,
	926: 101,
	927: 101,
	928: 101,
	929: 102,
	930: 102,
	931: 103,
	932: 102,
	933: 102,
	934: 102,
	935: 102,
	936: 102,
	937: 102,
	938: 103,
	939: 103,
	940: 103,
	941: 103,
	942: 103,
	943: 103,
	944: 104,
	945: 104,
	946: 104,
	947: 104,
	948: 104,
	949: 104,
	950: 104,
	951: 104,
	952: 105,
	953: 105,
	954: 105,
	1103: 105,
	1104: 105,
	1105: 105,
	1106: 105 ,
	1107: 105,
	1108: 105,
	1109: 105,
	1229: 103,
	1230: 8,
	# 1.9.3.1
	364 : 2,
	387 : 6,
	1639: 8,
	1410: 9,
	1411: 9,
	1412: 9,
	1413: 99,
	1414: 99,
	1415: 11,
	1416: 11,
	1417: 11,
	1418: 11,
	1419: 11,
	1420: 11,
	1421: 11,
	1422: 11,
	1423: 11,
	1424: 11,
	1425: 10,
	1426: 10,
	1427: 99,
	1428: 99,
	1429: 99,
	1430: 99,
	1431: 99,
	1432: 99,
	1433: 99,
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
