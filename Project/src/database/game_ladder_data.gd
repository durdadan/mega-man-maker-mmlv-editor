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

const LADDER_DATA: Dictionary = {
	6: "sprLadderCut.png",
	10: "sprLadderElec.png",
	11: "sprLadderBomb.png",
	12: "sprLadderFire.png",
	13: "sprLadderMM1Wily1.png",
	14: "sprLadderMM1Wily2.png",
	16: "sprLadderWood.png",
	17: "sprLadderCrash.png",
	18: "sprLadderMM2Wily1.png",
	19: "sprLadderMM2Wily2.png",
	20: "sprLadderMM2Wily4.png",
	97: "sprLadderSpark.png",
	98: "sprLadderNeedle.png",
	99: "sprLadderTop.png",
	100: "sprLadderMagnet.png",
	101: "sprLadderHard.png",
	102: "sprLadderGemini.png",
	103: "sprLadderMM3Wily4.png",
	104: "sprLadderSkull.png",
	105: "sprLadderBright.png",
	106: "sprLadderDust.png",
	107: "sprLadderCossack1.png",
	108: "sprLadderCossack4.png",
	109: "sprLadderMM4Wily2.png",
	110: "sprLadderStone.png",
	111: "sprLadderCrystal.png",
	112: "sprLadderNapalm.png",
	113: "sprLadderGyro.png",
	114: "sprLadderStar.png",
	115: "sprLadderCharge.png",
	116: "sprLadderProto1.png",
	117: "sprLadderProto2.png",
	118: "sprLadderProto3.png",
	119: "sprLadderBlizzard.png",
	120: "sprLadderWind.png",
	121: "sprLadderFlame.png",
	122: "sprLadderTomahawk.png",
	123: "sprLadderCentaur.png",
	124: "sprLadderKnight.png",
	125: "sprLadderPlant.png",
	126: "sprLadderMrX1.png",
	127: "sprLadderMrX4.png",
	128: "sprLadderMM6Wily1.png",
	365: "sprLadderHeat.png",
	366: "sprLadderNeedle2.png",
	367: "sprLadderShadow.png",
	368: "sprLadderMM3Wily1.png",
	369: "sprLadderMM3Wily2.png",
	370: "sprLadderRing.png",
	371: "sprLadderDive.png",
	372: "sprLadderDive2.png",
	373: "sprLadderDrill.png",
	374: "sprLadderCossack1_2.png",
	375: "sprLadderCossack3.png",
	376: "sprLadderMM4Wily3.png",
	377: "sprLadderGravity.png",
	378: "sprLadderMM5Wily1.png",
	379: "sprLadderMM5Wily2.png",
	380: "sprLadderWind2.png",
	381: "sprLadderTomahawk2.png",
	382: "sprLadderCentaur2.png",
	383: "sprLadderCentaur3.png",
	384: "sprLadderKnight2.png",
	385: "sprLadderYamato.png",
	386: "sprLadderMrX3.png",
	388: "sprLadderMM6Wily3.png",
	389: "sprLadderSpring.png",
	390: "sprLadderFreeze.png",
	391: "sprLadderSlash.png",
	392: "sprLadderJunk.png",
	393: "sprLadderShade.png",
	394: "sprLadderBurst.png",
	395: "sprLadderTurbo.png",
	396: "sprLadderCloud.png",
	397: "sprLadderMM7Wily1.png",
	398: "sprLadderMM7Wily2.png",
	399: "sprLadderMM7Wily3.png",
	400: "sprLadderAstro.png",
	401: "sprLadderFrost.png",
	402: "sprLadderSword.png",
	403: "sprLadderSword2.png",
	404: "sprLadderGrenade.png",
	405: "sprLadderAqua.png",
	406: "sprLadderSearch.png",
	407: "sprLadderSearch2.png",
	408: "sprLadderClown.png",
	409: "sprLadderDuo.png",
	410: "sprLadderMM8Wily2.png",
	411: "sprLadderMM8Wily3.png",
	412: "sprLadderConcrete.png",
	413: "sprLadderHornet.png",
	414: "sprLadderPlug.png",
	415: "sprLadderSplash.png",
	416: "sprLadderMagma.png",
	417: "sprLadderGalaxy.png",
	418: "sprLadderTornado.png",
	419: "sprLadderMM9Wily1.png",
	420: "sprLadderMM9Wily2.png",
	421: "sprLadderMM9Wily3.png",
	422: "sprLadderFake.png",
	423: "sprLadderMM9Endless.png",
	424: "sprLadderMM9Endless2.png",
	425: "sprLadderMM9Endless3.png",
	428: "sprLadderMM9Wily2Alt.png",
	429: "sprLadderJunk2.png",
	430: "sprLadderCloud2.png",
	431: "sprLadderMM9Wily1_2.png",
	434: "sprLadderSnake.png",
	573: "sprLadderBlade.png",
	574: "sprLadderSolar.png",
	575: "sprLadderSolarAlt.png",
	576: "sprLadderSheep.png",
	577: "sprLadderPump.png",
	578: "sprLadderPumpAlt.png",
	579: "sprLadderStrike.png",
	580: "sprLadderNitro.png",
	581: "sprLadderChill.png",
	582: "sprLadderChillAlt.png",
	583: "sprLadderChillAlt2.png",
	584: "sprLadderChillAlt3.png",
	585: "sprLadderMM10Wily1.png",
	586: "sprLadderMM10Wily2.png",
	587: "sprLadderMM10Wily3.png",
	588: "sprLadderMM10Wily3Alt.png",
	589: "sprLadderMM10Wily5.png",
	590: "sprLadderMM10Wily5_2.png",
	591: "sprLadderPunk.png",
	592: "sprLadderBallade.png",
	593: "sprLadderEndless.png",
	594: "sprLadderChallenge.png",
	659: "sprLadderBlock.png",
	660: "sprLadderAcid.png",
	661: "sprLadderBlast.png",
	662: "sprLadderBounce.png",
	663: "sprLadderTundra.png",
	664: "sprLadderImpact.png",
	665: "sprLadderTorch.png",
	666: "sprLadderFuse.png",
	667: "sprLadderMM11Wily1.png",
	668: "sprLadderMM11Wily2.png",
	669: "sprLadderLight.png",
	704: "sprLadderBomb1PU.png",
	705: "sprLadderBuilder1PU.png",
	706: "sprLadderBuilder2PU.png",
	707: "sprLadderBuilder3PU.png",
	708: "sprLadderBuilder4PU.png",
	709: "sprLadderChallengePU.png",
	710: "sprLadderCut1PU.png",
	711: "sprLadderElec1PU.png",
	712: "sprLadderFire1PU.png",
	713: "sprLadderGuts1PU.png",
	714: "sprLadderIce1PU.png",
	715: "sprLadderIntroPU.png",
	716: "sprLadderOilPU.png",
	717: "sprLadderTimePU.png",
	718: "sprLadderMM1PUWily1PU.png",
	719: "sprLadderMM1PUWily2PU.png",
	720: "sprLadderMM1PUWily3PU.png",
	721: "sprLadderMM1PUWily4PU.png",
	867: "sprLadderMmbIntro.png",
	873: "sprLadderCold.png",
	878: "sprLadderBurner.png",
	883: "sprLadderPirate.png",
	886: "sprLadderGround.png",
	892: "sprLadderTengu.png",
	897: "sprLadderMagic.png",
	903: "sprLadderMmbAstro.png",
	908: "sprLadderDynamo.png",
	912: "sprLadderKing1.png",
	915: "sprLadderKing2_1.png",
	922: "sprLadderKing2_2.png",
	923: "sprLadderKing2_3.png",
	924: "sprLadderGBICut.png",
	925: "sprLadderGBIElec.png",
	926: "sprLadderGBIFire.png",
	927: "sprLadderGBIIce.png",
	928: "sprLadderGBIWily.png",
	929: "sprLadderGBIIClash.png",
	930: "sprLadderGBIIClashAlt.png",
	931: "sprLadderGBIIIDive.png",
	932: "sprLadderGBIIMetal.png",
	933: "sprLadderGBIIMetalAlt.png",
	934: "sprLadderGBIIWood.png",
	935: "sprLadderGBIIWoodAlt.png",
	936: "sprLadderGBIIWily.png",
	937: "sprLadderGBIIWilyAlt.png",
	938: "sprLadderGBIIIDust.png",
	939: "sprLadderGBIIIGemini.png",
	940: "sprLadderGBIIISkull.png",
	941: "sprLadderGBIIISnake.png",
	942: "sprLadderGBIIISpark.png",
	943: "sprLadderGBIIIWily.png",
	944: "sprLadderGBIVBright.png",
	945: "sprLadderGBIVCharge.png",
	946: "sprLadderGBIVCrystal.png",
	947: "sprLadderGBIVNapalm.png",
	948: "sprLadderGBIVRing.png",
	949: "sprLadderGBIVStone.png",
	950: "sprLadderGBIVToad.png",
	951: "sprLadderGBIVWily.png",
	952: "sprLadderGBVJupiter.png",
	953: "sprLadderGBVMars.png",
	954: "sprLadderGBVMercury.png",
	1103: "sprLadderGBVNeptune.png",
	1104: "sprLadderGBVNeptuneAlt.png",
	1105: "sprLadderGBVPluto.png",
	1106: "sprLadderGBVSaturn.png",
	1107: "sprLadderGBVUranus.png",
	1108: "sprLadderGBVVenus.png",
	1109: "sprLadderGBVWily.png",
	1229: "sprLadderGBIIIDiveAlt.png",
	1230: "sprLadderSearch3.png",
	# 1.9.3.1
	1639: "sprLadderGrenade_Overwrite.png",
	1410: "sprLadderMM9Wily3Alt.tres",
	1411: "sprLadderMM9Wily2Alt2.tres",
	1412: "sprLadderMM9Wily2Alt3.tres",
	1413: "sprLadderElec1PUAlt.tres",
	1415: "sprLadderBlastAlt.tres",
	1416: "sprLadderAcidAlt.tres",
	1418: "sprLadderBlockAlt.tres",
	1419: "sprLadderBlockAlt2.tres",
	1420: "sprLadderBounceAlt.tres",
	1421: "sprLadderFuseAlt.tres",
	1422: "sprLadderTorchAlt.tres",
	1423: "sprLadderMM11Wily1Alt.tres",
	1424: "sprLadderMM11Wily2Alt.tres",
	1425: "sprLadderChillAlt4.tres",
	1426: "sprLadderSolarAlt2.tres",
	1427: "sprLadderOilPUAlt.tres",
	1428: "sprLadderMM1PUWily1PUAlt.tres",
	1432: "sprLadderMM1PUWily2PUAlt.tres",
}

const LADDER_GAME_IDS: Dictionary = {
	6: 1,
	10: 1,
	11: 1,
	12: 1,
	13: 1,
	14: 1,
	16: 2,
	17: 2,
	18: 2,
	19: 2,
	20: 2,
	97: 3,
	98: 3,
	99: 3,
	100: 3,
	101: 3,
	102: 3,
	103: 3,
	104: 4,
	105: 4,
	106: 4,
	107: 4,
	108: 4,
	109: 4,
	110: 5,
	111: 5,
	112: 5,
	113: 5,
	114: 5,
	115: 5,
	116: 5,
	117: 5,
	118: 5,
	119: 6,
	120: 6,
	121: 6,
	122: 6,
	123: 6,
	124: 6,
	125: 6,
	126: 6,
	127: 6,
	128: 6,
	365: 2,
	366: 3,
	367: 3,
	368: 3,
	369: 3,
	370: 4,
	371: 4,
	372: 4,
	373: 4,
	374: 4,
	375: 4,
	376: 4,
	377: 5,
	378: 5,
	379: 5,
	380: 6,
	381: 6,
	382: 6,
	383: 6,
	384: 6,
	385: 6,
	386: 6,
	388: 6,
	389: 7,
	390: 7,
	391: 7,
	392: 7,
	393: 7,
	394: 7,
	395: 7,
	396: 7,
	397: 7,
	398: 7,
	399: 7,
	400: 8,
	401: 8,
	402: 8,
	403: 8,
	404: 199,
	405: 8,
	406: 8,
	407: 8,
	408: 8,
	409: 8,
	410: 8,
	411: 8,
	412: 9,
	413: 9,
	414: 9,
	415: 9,
	416: 9,
	417: 9,
	418: 9,
	419: 9,
	420: 9,
	421: 9,
	422: 9,
	423: 9,
	424: 9,
	425: 9,
	428: 9,
	429: 7,
	430: 7,
	431: 9,
	434: 3,
	573: 10,
	574: 10,
	575: 10,
	576: 10,
	577: 10,
	578: 10,
	579: 10,
	580: 10,
	581: 10,
	582: 10,
	583: 10,
	584: 10,
	585: 10,
	586: 10,
	587: 10,
	588: 10,
	589: 10,
	590: 10,
	591: 10,
	592: 10,
	593: 10,
	594: 10,
	659: 11,
	660: 11,
	661: 11,
	662: 11,
	663: 11,
	664: 11,
	665: 11,
	666: 11,
	667: 11,
	668: 11,
	669: 11,
	704: 1,
	705: 1,
	706: 1,
	707: 1,
	708: 1,
	709: 1,
	710: 1,
	711: 1,
	712: 1,
	713: 1,
	714: 1,
	715: 1,
	716: 1,
	717: 1,
	718: 1,
	719: 1,
	720: 1,
	721: 1,
	867: 99,
	873: 99,
	878: 99,
	883: 99,
	886: 99,
	892: 99,
	897: 99,
	903: 99,
	908: 99,
	912: 99,
	915: 99,
	922: 99,
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
	1106: 105,
	1107: 105,
	1108: 105,
	1109: 105,
	1229: 103,
	1230: 8,
	# 1.9.3.1
	1639: 8,
	1410: 9,
	1411: 9,
	1412: 9,
	1413: 1,
	1415: 11,
	1416: 11,
	1418: 11,
	1419: 11,
	1420: 11,
	1421: 11,
	1422: 11,
	1423: 11,
	1424: 11,
	1425: 10,
	1426: 10,
	1427: 1,
	1428: 1,
	1432: 1,
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
