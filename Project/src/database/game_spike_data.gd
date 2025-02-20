# Script_Name_Here
# Written by: 

extends Reference

class_name GameSpikeData

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

const SPIKE_TILE_COUNT: int = 5
const SPIKE_DATA: Dictionary = {
	2: "sprSpikeCut.png",
	7: "sprSpikeGuts.png",
	8: "sprSpikeMM1Wily1.png",
	9: "sprSpikeMM1Wily2.png",
	15: "sprSpikeBubble.png",
	56: "sprSpikeSpark.png",
	57: "sprSpikeTop.png",
	58: "sprSpikeMagnet.png",
	59: "sprSpikeMM3Wily2.png",
	60: "sprSpikeMM3Wily3.png",
	61: "sprSpikeMM3Wily4.png",
	62: "sprSpikeRing.png",
	63: "sprSpikeSkull.png",
	64: "sprSpikeBright.png",
	65: "sprSpikeDrill.png",
	66: "sprSpikeToad.png",
	67: "sprSpikePharaoh.png",
	68: "sprSpikeCossack2.png",
	69: "sprSpikeCossack3.png",
	70: "sprSpikeMM4Wily1.png",
	71: "sprSpikeMM4Wily2.png",
	72: "sprSpikeGravity.png",
	73: "sprSpikeCrystal.png",
	74: "sprSpikeNapalm.png",
	75: "sprSpikeGyro.png",
	76: "sprSpikeStar.png",
	77: "sprSpikeWave.png",
	78: "sprSpikeCharge.png",
	79: "sprSpikeProto1.png",
	80: "sprSpikeProto2.png",
	81: "sprSpikeProto3.png",
	82: "sprSpikeProto4.png",
	83: "sprSpikeMM5Wily1.png",
	84: "sprSpikeMM5Wily2.png",
	85: "sprSpikeBlizzard.png",
	86: "sprSpikeWind.png",
	87: "sprSpikeTomahawk.png",
	88: "sprSpikeCentaur.png",
	89: "sprSpikeKnight.png",
	90: "sprSpikeYamato.png",
	91: "sprSpikePlant.png",
	92: "sprSpikeMrX1.png",
	93: "sprSpikeMrX2.png",
	94: "sprSpikeMrX4.png",
	95: "sprSpikeMM6Wily1.png",
	96: "sprSpikeMM6Wily3.png",
	154: "sprSpikeFreeze.png",
	155: "sprSpikeShade.png",
	156: "sprSpikeMM7Wily3.png",
	289: "sprSpikeMM2Wily2.png",
	290: "sprSpikeMM2Wily4.png",
	291: "sprSpikeSparkAlt.png",
	292: "sprSpikeNeedle.png",
	293: "sprSpikeTop2.png",
	294: "sprSpikeShadow.png",
	295: "sprSpikeShadow2.png",
	296: "sprSpikeMM3Wily1.png",
	297: "sprSpikeMM3Wily1_2.png",
	298: "sprSpikeDive.png",
	299: "sprSpikeDiveAlt.png",
	300: "sprSpikeDust.png",
	301: "sprSpikeStone.png",
	302: "sprSpikeNapalmAlt.png",
	303: "sprSpikeProto3_2.png",
	304: "sprSpikeMM5Wily1_2.png",
	305: "sprSpikeMM5Wily1_2Alt.png",
	306: "sprSpikeMM5Wily2_2.png",
	307: "sprSpikeMM5Wily3.png",
	308: "sprSpikeWindAlt.png",
	309: "sprSpikeFlame.png",
	310: "sprSpikeTomahawkAlt.png",
	311: "sprSpikeCentaur2.png",
	312: "sprSpikeCentaur2Alt.png",
	313: "sprSpikeKnightAlt.png",
	314: "sprSpikeKnight2.png",
	315: "sprSpikeKnight2Alt.png",
	316: "sprSpikeYamatoAlt.png",
	317: "sprSpikeYamato2.png",
	318: "sprSpikeYamato2Alt.png",
	319: "sprSpikeMM6Wily3_2.png",
	320: "sprSpikeSpring.png",
	321: "sprSpikeSlash.png",
	322: "sprSpikeBurst.png",
	323: "sprSpikeBurstAlt.png",
	324: "sprSpikeBurst2.png",
	325: "sprSpikeBurst2Alt.png",
	326: "sprSpikeTurbo.png",
	327: "sprSpikeMM7Wily3_2.png",
	328: "sprSpikeAqua.png",
	329: "sprSpikeAqua2.png",
	330: "sprSpikeSearch.png",
	331: "sprSpikeClown.png",
	332: "sprSpikeDuo.png",
	333: "sprSpikeMM8Wily3.png",
	334: "sprSpikeConcrete.png",
	335: "sprSpikeJewel.png",
	336: "sprSpikeHornet.png",
	337: "sprSpikePlug.png",
	338: "sprSpikePlug2.png",
	339: "sprSpikeSplash.png",
	340: "sprSpikeSplashAlt.png",
	341: "sprSpikeSplashAlt2.png",
	342: "sprSpikeSplash2.png",
	343: "sprSpikeGalaxy.png",
	344: "sprSpikeTornado.png",
	345: "sprSpikeMM9Wily1.png",
	346: "sprSpikeMM9Wily2.png",
	347: "sprSpikeMM9Wily2Alt.png",
	348: "sprSpikeMM9Wily4.png",
	349: "sprSpikeFake.png",
	350: "sprSpikeMM9Endless.png",
	351: "sprSpikeMM9Endless2.png",
	352: "sprSpikeMM9Endless3.png",
	353: "sprSpikeMM2Wily3.png",
	354: "sprSpikeGemini2.png",
	355: "sprSpikeGemini3.png",
	356: "sprSpikeGemini4.png",
	357: "sprSpikeGemini5.png",
	358: "sprSpikeMM7Wily1.png",
	359: "sprSpikeMM7Wily2.png",
	360: "sprSpikeFrost.png",
	361: "sprSpikeSword.png",
	362: "sprSpikeGrenade.png",
	363: "sprSpikeMM9Wily3.png",
	426: "sprSpikeBlizzard2.png",
	427: "sprSpikeMM6Wily1Alt.png",
	474: "sprSpikeMM7Wily4.png",
	595: "sprSpikeMM3Wily3_2.png",
	596: "sprSpikeTomahawkAlt2.png",
	597: "sprSpikeMM9Wily1_2.png",
	598: "sprSpikeBlade.png",
	599: "sprSpikeSheep.png",
	600: "sprSpikeCommando.png",
	601: "sprSpikePump.png",
	602: "sprSpikePumpAlt.png",
	603: "sprSpikeNitro.png",
	604: "sprSpikeChill.png",
	605: "sprSpikeChillAlt.png",
	606: "sprSpikeChillAlt2.png",
	607: "sprSpikeChillAlt3.png",
	608: "sprSpikeMM10Wily1.png",
	609: "sprSpikeMM10Wily2.png",
	610: "sprSpikeMM10Wily3.png",
	611: "sprSpikeMM10Wily5.png",
	612: "sprSpikeEnker.png",
	613: "sprSpikeEnkerAlt.png",
	614: "sprSpikePunk.png",
	615: "sprSpikeBallade.png",
	616: "sprSpikeMM10Endless.png",
	617: "sprSpikeMM10Endless2.png",
	618: "sprSpikeChallenge.png",
	619: "sprSpikeChallengeAlt.png",
	620: "sprSpikeDifficulty.png",
	670: "sprSpikeAcid.png",
	671: "sprSpikeAcid2.png",
	672: "sprSpikeBlast.png",
	673: "sprSpikeTundra.png",
	674: "sprSpikeImpact.png",
	675: "sprSpikeMM11Wily1.png",
	676: "sprSpikeLight.png",
	680: "sprSpikeMM11Wily1_2.png",
	723: "sprSpikeBombPU.png",
	724: "sprSpikeBuilder2PU.png",
	725: "sprSpikeBuilder3PU.png",
	726: "sprSpikeBuilder4PU.png",
	727: "sprSpikeBuilderPU.png",
	728: "sprSpikeCutPU.png",
	729: "sprSpikeElecPU.png",
	730: "sprSpikeFirePU.png",
	731: "sprSpikeGutsPU.png",
	732: "sprSpikeIcePU.png",
	733: "sprSpikeOilPU.png",
	734: "sprSpikeTimePU.png",
	735: "sprSpikeMM1Wily1PU.png",
	736: "sprSpikeMM1Wily2PU.png",
	737: "sprSpikeMM1Wily3PU.png",
	866: "sprSpikeMmbIntro.png",
	872: "sprSpikeCold.png",
	877: "sprSpikeBurner.png",
	882: "sprSpikePirate.png",
	885: "sprSpikeGround.png",
	891: "sprSpikeTengu.png",
	896: "sprSpikeMagic.png",
	902: "sprSpikePirateAlt3.png",
	907: "sprSpikePirateAlt.png",
	911: "sprSpikeKing1.png",
	914: "sprSpikeKing2.png",
	920: "sprSpikePirateAlt2.png",
	921: "sprSpikeBurnerAlt.png",
	1110: "sprSpikeGBIElec.png",
	1111: "sprSpikeGBIIce.png",
	1112: "sprSpikeGBIIClash.png",
	1113: "sprSpikeGBIIClashAlt.png",
	1124: "sprSpikeGBIIMetal.png",
	1125: "sprSpikeGBIIMetalAlt.png",
	1126: "sprSpikeGBIIWily.png",
	1127: "sprSpikeGBIIWilyAlt.png",
	1123: "sprSpikeGBIIISpark.png",
	1119: "sprSpikeGBIIIGemini.png",
	1120: "sprSpikeGBIIIGeminiAlt.png",
	1121: "sprSpikeGBIIIGeminiAlt2.png",
	1114: "sprSpikeGBIIIDive.png",
	1122: "sprSpikeGBIIISkull.png",
	1116: "sprSpikeGBIIIDust.png",
	1117: "sprSpikeGBIIIDustAlt.png",
	1118: "sprSpikeGBIIIDustAlt2.png",
	1115: "sprSpikeGBIIIDrill.png",
	1135: "sprSpikeGBIVToad.png",
	1128: "sprSpikeGBIVBright.png",
	1132: "sprSpikeGBIVPharaoh.png",
	1133: "sprSpikeGBIVRing.png",
	1130: "sprSpikeGBIVCrystal.png",
	1131: "sprSpikeGBIVCrystalAlt.png",
	1134: "sprSpikeGBIVStone.png",
	1129: "sprSpikeGBIVCharge.png",
	1136: "sprSpikeGBIVWily.png",
	1139: "sprSpikeGBVMercury.png",
	1145: "sprSpikeGBVVenus.png",
	1140: "sprSpikeGBVNeptune.png",
	1141: "sprSpikeGBVNeptuneAlt.png",
	1138: "sprSpikeGBVMars.png",
	1137: "sprSpikeGBVJupiter.png",
	1143: "sprSpikeGBVSaturn.png",
	1144: "sprSpikeGBVUranus.png",
	1142: "sprSpikeGBVPluto.png",
	1146: "sprSpikeGBVWily.png",
	1147: "sprSpikeKing1Alt.png",
	1148: "sprSpikeKing1Alt2.png",
	1149: "sprSpikeKing1Alt3.png",
	1150: "sprSpikeKing2Alt.png",
	1151: "sprSpikeKing2Alt2.png",
	1164: "sprSpikeDynamo.png",
	1166: "sprSpikeMBAstro.png",
	1167: "sprSpikeMBAstroAlt.png",
	1217: "sprSpikeAcidAlt.png",
	1218: "sprSpikeAcidAlt2.png",
	1219: "sprSpikeAcidAlt3.png",
	1220: "sprSpikeAcid2Alt.png",
	1221: "sprSpikeAcid2Alt2.png",
	1222: "sprSpikeAcid2Alt3.png",
	1223: "sprSpikeGBIVCrystalAlt2.png",
	1224: "sprSpikeGBIVCrystalAlt3.png",
	1225: "sprSpikeDiveAlt2.png",
	1226: "sprSpikeGrenade2.png",
	1227: "sprSpikeImpact2.png",
	1228: "sprSpikeTundra2.png",
	# 1.9.3.1
	1378: "sprSpikeTimeAltPU.png",
	1379: "sprSpikeGravityAlt.tres",
	1380: "sprSpikeGyroAlt.tres",
	1381: "sprSpikeAquaAlt.png",
	1382: "sprSpikeAqua2Alt.png",
	1383: "sprSpikeClownAlt.png",
	1384: "sprSpikeGBIIIDustAlt3.tres",
	1385: "sprSpikeGBIIIDustAlt4.tres",
	1386: "sprSpikeGBIIIDustAlt5.tres",
	1387: "sprSpikeGBIIISparkAlt.tres",
	1388: "sprSpikeGBIVChargeAlt.tres",
	1389: "sprSpikeGBIVCrystalAlt4.tres",
	1390: "sprSpikeGBIVCrystalAlt5.tres",
	1391: "sprSpikeGBIVCrystalAlt6.tres",
	1392: "sprSpikeGBIVCrystalAlt7.tres",
	1393: "sprSpikeGBIVRingAlt.tres",
	1394: "sprSpikeGBVJupiterAlt.tres",
	1395: "sprSpikeAcid2Alt4.tres",
	1396: "sprSpikeAcid2Alt5.tres",
	1397: "sprSpikeAcid2Alt6.tres",
	1398: "sprSpikeAcid2Alt7.tres",
	1399: "sprSpikeAcidAlt4.tres",
	1400: "sprSpikeAcidAlt5.tres",
	1401: "sprSpikeAcidAlt6.tres",
	1402: "sprSpikeAcidAlt7.tres",
	1403: "sprSpikeChillAlt4.tres",
	1404: "sprSpikeGemini6.tres",
	1405: "sprSpikeLightAlt.tres",
	1406: "sprSpikeMM10Wily5Alt.tres",
	1407: "sprSpikePunkAlt.tres",
	1408: "sprSpikeSparkAlt2.tres",
	1409: "sprSpikeTundraAlt2.tres",
	1624: "sprSpikeBombPU_Overwrite.png",
	1625: "sprSpikeBuilder4PU_Overwrite.png",
	1626: "sprSpikeCutPU_Overwrite.png",
	1627: "sprSpikeElecPU_Overwrite.png",
	1628: "sprSpikeFirePU_Overwrite.png",
	1629: "sprSpikeGutsPU_Overwrite.png",
	1630: "sprSpikeIcePU_Overwrite.png",
	1631: "sprSpikeOilPU_Overwrite.png",
	1632: "sprSpikeTimePU_Overwrite.png",
	1633: "sprSpikeMM1Wily1PU_Overwrite.png",
	1634: "sprSpikeMM1Wily2PU_Overwrite.png",
	1635: "sprSpikeMM1Wily3PU_Overwrite.png",
	1636: "sprSpikeTimeAltPU_Overwrite.png",
	1637: "sprSpikeBurst_Overwrite.png",
	1638: "sprSpikeBurstAlt_Overwrite.png",
}

const SUBTILE_ID_POSITIONS: Dictionary = {
	0: Vector2(16, 0),
	1: Vector2(16, 32),
	2: Vector2(0, 16),
	3: Vector2(32, 16),
	4: Vector2(0, 0)
}

const SPIKE_GAME_IDS: Dictionary = {
	2: 1,
	7: 1,
	8: 1,
	9: 1,
	15: 2,
	56: 3,
	57: 3,
	58: 3,
	59: 3,
	60: 3,
	61: 3,
	62: 4,
	63: 4,
	64: 4,
	65: 4,
	66: 4,
	67: 4,
	68: 4,
	69: 4,
	70: 4,
	71: 4,
	72: 5,
	73: 5,
	74: 5,
	75: 5,
	76: 5,
	77: 5,
	78: 5,
	79: 5,
	80: 5,
	81: 5,
	82: 5,
	83: 5,
	84: 5,
	85: 6,
	86: 6,
	87: 6,
	88: 6,
	89: 6,
	90: 6,
	91: 6,
	92: 6,
	93: 6,
	94: 6,
	95: 6,
	96: 6,
	154: 7,
	155: 7,
	156: 7,
	289: 2,
	290: 2,
	291: 3,
	292: 3,
	293: 3,
	294: 3,
	295: 3,
	296: 3,
	297: 3,
	298: 4,
	299: 4,
	300: 4,
	301: 5,
	302: 5,
	303: 5,
	304: 5,
	305: 5,
	306: 5,
	307: 5,
	308: 6,
	309: 6,
	310: 6,
	311: 6,
	312: 6,
	313: 6,
	314: 6,
	315: 6,
	316: 6,
	317: 6,
	318: 6,
	319: 6,
	320: 7,
	321: 7,
	322: 199,
	323: 199,
	324: 7,
	325: 7,
	326: 7,
	327: 7,
	328: 8,
	329: 8,
	330: 8,
	331: 8,
	332: 8,
	333: 8,
	334: 9,
	335: 9,
	336: 9,
	337: 9,
	338: 9,
	339: 9,
	340: 9,
	341: 9,
	342: 9,
	343: 9,
	344: 9,
	345: 9,
	346: 9,
	347: 9,
	348: 9,
	349: 9,
	350: 9,
	351: 9,
	352: 9,
	353: 2,
	354: 3,
	355: 3,
	356: 3,
	357: 3,
	358: 7,
	359: 7,
	360: 8,
	361: 8,
	362: 8,
	363: 9,
	426: 6,
	427: 6,
	474: 7,
	595: 3,
	596: 6,
	597: 9,
	598: 10,
	599: 10,
	600: 10,
	601: 10,
	602: 10,
	603: 10,
	604: 10,
	605: 10,
	606: 10,
	607: 10,
	608: 10,
	609: 10,
	610: 10,
	611: 10,
	612: 10,
	613: 10,
	614: 10,
	615: 10,
	616: 10,
	617: 10,
	618: 10,
	619: 10,
	620: 10,
	670: 11,
	671: 11,
	672: 11,
	673: 11,
	674: 11,
	675: 11,
	676: 11,
	680: 11,
	723: 199,
	724: 1,
	725: 1,
	726: 199,
	727: 1,
	728: 199,
	729: 199,
	730: 199,
	731: 199,
	732: 199,
	733: 199,
	734: 199,
	735: 199,
	736: 199,
	737: 199,
	866: 99,
	872: 99,
	877: 99,
	882: 99,
	885: 99,
	891: 99,
	896: 99,
	902: 99,
	907: 99,
	911: 99,
	914: 99,
	920: 99,
	921: 99,
	1110: 101,
	1111: 101,
	1112: 102,
	1113: 102,
	1124: 102,
	1125: 102,
	1126: 102,
	1127: 102,
	1123: 103,
	1119: 103,
	1120: 103,
	1121: 103,
	1114: 103,
	1122: 103,
	1116: 103,
	1117: 103,
	1118: 103,
	1115: 103,
	1135: 104,
	1128: 104,
	1132: 104,
	1133: 104,
	1130: 104,
	1131: 104,
	1134: 104,
	1129: 104,
	1136: 104,
	1139: 105,
	1145: 105,
	1140: 105,
	1141: 105,
	1138: 105,
	1137: 105,
	1143: 105,
	1144: 105,
	1142: 105,
	1146: 105,
	1147: 99,
	1148: 99,
	1149: 99,
	1150: 99,
	1151: 99,
	1164: 99,
	1166: 99,
	1167: 99,
	1217: 11,
	1218: 11,
	1219: 11,
	1220: 11,
	1221: 11,
	1222: 11,
	1223: 104,
	1224: 104,
	1225: 103,
	1226: 8,
	1227: 11,
	1228: 11,
	# 1.9.3.1
	1378: 199,
	1379: 5,
	1380: 5,
	1381: 8,
	1382: 8,
	1383: 8,
	1384: 103,
	1385: 103,
	1386: 103,
	1387: 103,
	1388: 104,
	1389: 104,
	1390: 104,
	1391: 104,
	1392: 104,
	1393: 104,
	1394: 105,
	1395: 11,
	1396: 11,
	1397: 11,
	1398: 11,
	1399: 11,
	1400: 11,
	1401: 11,
	1402: 11,
	1403: 10,
	1404: 3,
	1405: 11,
	1406: 10,
	1407: 10,
	1408: 3,
	1409: 11,
	1624: 1,
	1625: 1,
	1626: 1,
	1627: 1,
	1628: 1,
	1629: 1,
	1630: 1,
	1631: 1,
	1632: 1,
	1633: 1,
	1634: 1,
	1635: 1,
	1636: 1,
	1637: 7,
	1638: 7,
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
