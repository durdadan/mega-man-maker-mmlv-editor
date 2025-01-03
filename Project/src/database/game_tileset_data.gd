# GameTileSetData
# Written by: First

extends Reference

class_name GameTileSetData

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

const SUBTILE_COUNT: int = 80

#These data contains filenames used for generating tilemap.
#TilemapGenerator scene can be found in the project.
const TILESET_DATA: Dictionary = {
	0 : "tstTomahawk",
	1 : "tstQuick",
	3 : "tstCut",
	4 : "tstGuts",
	5 : "tstElec",
	21 : "tstIce",
	22 : "tstFire",
	23 : "tstBomb",
	24 : "tstBubble",
	25 : "tstAir",
	26 : "tstWood",
	27 : "tstCrash",
	28 : "tstMetal",
	29 : "tstHeat",
	30 : "tstSpark",
	31 : "tstSnake",
	32 : "tstNeedle",
	33 : "tstTop",
	34 : "tstMagnet",
	35 : "tstGemini",
	36 : "tstHard",
	37 : "tstRing",
	38 : "tstDive",
	39 : "tstSkull",
	40 : "tstBright",
	41 : "tstDust2",
	42 : "tstDrill",
	43 : "tstToad2",
	44 : "tstPharaoh",
	45 : "tstStone2",
	46 : "tstGravity",
	47 : "tstNapalm",
	48 : "tstGyro",
	49 : "tstStar",
	50 : "tstCharge",
	51 : "tstBlizzard",
	52 : "tstWind",
	53 : "tstCentaur",
	54 : "tstKnight",
	55 : "tstYamato",
	129 : "tstTime",
	130 : "tstOil",
	131 : "tstMM1Wily1_2",
	132 : "tstMM2Wily1_4",
	133 : "tstMM2Wily2",
	134 : "tstMM2Wily4",
	135 : "tstMM2Wily5",
	136 : "tstMM3Wily1_3",
	137 : "tstMM3Wily2",
	138 : "tstMM3Wily3",
	142 : "tstCossack1",
	143 : "tstCossack3",
	144 : "tstMM4Wily1",
	145 : "tstMM4Wily2",
	146 : "tstDark1",
	147 : "tstDark2",
	148 : "tstDark3",
	149 : "tstMM5Wily1",
	150 : "tstMrX2_3",
	151 : "tstMM6Wily1_2",
	152 : "tstMM6Wily2",
	153 : "tstMM6Wily3",
	157 : "tstSpring",
	158 : "tstFreeze",
	159 : "tstShade",
	160 : "tstSlash",
	161 : "tstJunk",
	162 : "tstShade2",
	163 : "tstBurst",
	164 : "tstTurbo",
	165 : "tstCloud",
	166 : "tstMM7Wily1",
	167 : "tstMM1Wily2",
	168 : "tstMM1Wily3",
	169 : "tstMM1Wily4",
	170 : "tstMM2Wily3",
	171 : "tstMM3Wily4_3",
	172 : "tstMM3Wily5",
	173 : "tstMM3Wily6",
	174 : "tstDark4",
	175 : "tstMM6Wily2Alt",
	198 : "tstMM1Wily1",
	199 : "tstBubbleAlt",
	200 : "tstQuickAlt",
	201 : "tstMM2Wily1_2",
	202 : "tstMM2Wily3Alt",
	203 : "tstMM2Wily6",
	204 : "tstShadow",
	205 : "tstMM3Wily1_3Alt",
	206 : "tstMM3Wily1",
	207 : "tstMM3Wily1_2",
	208 : "tstMM3Wily4",
	209 : "tstDiveAlt",
	210 : "tstDust4",
	211 : "tstDrill2",
	212 : "tstToad",
	213 : "tstCossack1_2",
	214 : "tstCossack2",
	215 : "tstCossack4",
	216 : "tstMM4Wily3",
	217 : "tstMM4Wily4",
	218 : "tstStone",
	219 : "tstNapalm2",
	220 : "tstWave",
	221 : "tstDark2_4",
	222 : "tstDark3_2",
	223 : "tstMM5Wily2",
	224 : "tstMM5Wily2Alt",
	225 : "tstMM5Wily3",
	226 : "tstMM5Wily4",
	227 : "tstBlizzard2",
	228 : "tstWind2",
	229 : "tstFlame",
	230 : "tstFlame2",
	231 : "tstTomahawkAlt",
	232 : "tstTomahawk2",
	233 : "tstTomahawk2Alt",
	234 : "tstTomahawk3",
	235 : "tstTomahawk3Alt",
	236 : "tstCentaurAlt",
	237 : "tstKnightAlt",
	238 : "tstKnight2",
	239 : "tstKnight2Alt",
	240 : "tstYamatoAlt",
	241 : "tstYamato5",
	242 : "tstYamato5Alt",
	243 : "tstYamato7",
	244 : "tstYamato7Alt",
	245 : "tstYamato6",
	246 : "tstYamato6Alt",
	247 : "tstYamato4",
	248 : "tstYamato4Alt",
	249 : "tstPlant",
	250 : "tstMrX1",
	251 : "tstMrX1_2",
	252 : "tstMrX3",
	253 : "tstMrX4",
	254 : "tstMM6Wily1_2Alt",
	255 : "tstMM6Wily4",
	256 : "tstConcrete",
	257 : "tstHornet",
	258 : "tstPlug",
	259 : "tstMagma",
	260 : "tstSplash",
	261 : "tstGalaxy",
	262 : "tstTornado",
	263 : "tstMM9Wily1",
	264 : "tstMM9Wily2",
	265 : "tstMM9Wily2Alt",
	266 : "tstMM9Wily3",
	267 : "tstMM9Wily4",
	268 : "tstFake",
	269 : "tstMM9Endless1",
	270 : "tstMM9Endless2",
	271 : "tstMM9Endless2Alt",
	272 : "tstMM9Endless2Alt2",
	273 : "tstMM9Endless3",
	274 : "tstMM9Endless3Alt",
	275 : "tstMM9Endless4",
	276 : "tstMM9Endless5",
	277 : "tstMM9Endless6",
	278 : "tstMM9Endless4Alt",
	279 : "tstMM9Endless7",
	280 : "tstMM9Endless8",
	281 : "tstMM9Endless8Alt",
	282 : "tstMM9Endless9",
	283 : "tstMM9Endless9Alt",
	284 : "tstMM9Endless10",
	285 : "tstCrystal",
	286 : "tstJewel",
	287 : "tstMM9Wily4Alt",
	288 : "tstTornado2",
	432 : "tstPharaoh2",
	433 : "tstNeedle2",
	435 : "tstSnake2",
	436 : "tstTop2",
	437 : "tstStar2",
	438 : "tstStar2Alt",
	439 : "tstCharge3",
	440 : "tstFlame3",
	441 : "tstCentaur2",
	442 : "tstCentaur2Alt",
	443 : "tstMrX2",
	444 : "tstConcrete2",
	445 : "tstMagma2",
	446 : "tstFlashS1",
	447 : "tstFlashS2",
	448 : "tstFlashA1",
	449 : "tstFlashA2",
	450 : "tstFlashA3",
	451 : "tstGeminiS1",
	452 : "tstGeminiS2",
	453 : "tstGeminiS3",
	454 : "tstGeminiA1",
	455 : "tstGeminiA2",
	456 : "tstGeminiA3",
	457 : "tstMM2Wily1_2Alt",
	458 : "tstSpring2",
	459 : "tstMM9Wily1_2",
	460 : "tstMM9Wily1_2Alt",
	462 : "tstTengu",
	463 : "tstFrost",
	464 : "tstFrostAlt",
	465 : "tstGrenade",
	466 : "tstClown",
	467 : "tstAstro",
	468 : "tstAstro2",
	469 : "tstAstro2Alt",
	470 : "tstSword",
	471 : "tstAqua",
	472 : "tstSearch",
	473 : "tstMM8Wily1",
	475 : "tstMM8Wily2",
	476 : "tstMM8Wily2Alt",
	477 : "tstElec2",
	478 : "tstTimeAlt",
	479 : "tstMM4Wily3_2",
	480 : "tstCrystalAlt",
	481 : "tstMM5Wily1_2",
	482 : "tstShade2Alt",
	483 : "tstMM7Wily2",
	484 : "tstMM7Wily3",
	485 : "tstMM7Wily4",
	486 : "tstConcrete3",
	487 : "tstFake2",
	488 : "tstBlade",
	489 : "tstBlade2",
	490 : "tstSolar",
	491 : "tstSolar2",
	492 : "tstSolar3",
	493 : "tstSheep",
	494 : "tstCommando",
	495 : "tstPump",
	496 : "tstPumpAlt",
	497 : "tstPump2",
	498 : "tstPump2Alt",
	499 : "tstStrike",
	500 : "tstStrike2",
	501 : "tstNitro",
	502 : "tstNitro2",
	503 : "tstChill",
	504 : "tstChill2",
	505 : "tstMM10Wily1",
	506 : "tstMM10Wily1_2",
	507 : "tstMM10Wily1_3",
	508 : "tstMM10Wily2",
	509 : "tstMM10Wily2_2",
	510 : "tstMM10Wily2_3",
	511 : "tstMM10Wily3",
	512 : "tstMM10Wily3Alt",
	513 : "tstMM10Wily3_2",
	514 : "tstMM10Wily3_2Alt",
	515 : "tstMM10Wily4",
	516 : "tstMM10Wily4Alt",
	517 : "tstMM10Wily5",
	518 : "tstMM10Wily5_2",
	519 : "tstEnker",
	520 : "tstEnker2",
	521 : "tstEnker3",
	522 : "tstEnker4",
	523 : "tstEnker5",
	524 : "tstEnker6",
	525 : "tstPunk",
	526 : "tstPunk2",
	527 : "tstPunk3",
	528 : "tstPunk4",
	529 : "tstBallade",
	530 : "tstBallade2",
	531 : "tstMM10Endless1",
	532 : "tstMM10Endless2",
	533 : "tstMM10Endless3",
	534 : "tstMM10Endless3Alt",
	535 : "tstMM10Endless4",
	536 : "tstMM10Endless5",
	537 : "tstMM10Endless6",
	538 : "tstMM10Endless6Alt",
	539 : "tstMM10Endless7",
	540 : "tstMM10Endless8",
	541 : "tstMM10Endless9",
	542 : "tstMM10Endless10",
	543 : "tstMM10Endless11",
	544 : "tstMM10Endless12",
	545 : "tstMM10Endless13",
	546 : "tstMM10Endless14",
	547 : "tstMM10Endless15",
	548 : "tstMM10Endless16",
	549 : "tstMM10Endless17",
	550 : "tstMM10Endless18",
	551 : "tstMM10Endless18Alt",
	552 : "tstMM10Endless19",
	553 : "tstMM10Endless20",
	554 : "tstMM10Endless21",
	555 : "tstMM10Endless21Alt",
	556 : "tstMM10Endless22",
	557 : "tstMM10Endless22Alt",
	558 : "tstMM10Endless23",
	559 : "tstMM10Endless24",
	560 : "tstMM10Endless25",
	561 : "tstMM10Endless25Alt",
	562 : "tstMM10Endless26",
	563 : "tstMM10Endless27",
	564 : "tstMM10Endless28",
	565 : "tstMM10Endless29",
	566 : "tstChallenge",
	567 : "tstChallengeAlt",
	568 : "tstChallengeAlt2",
	569 : "tstChallenge2",
	570 : "tstChallenge2Alt",
	571 : "tstChallenge3",
	572 : "tstDifficulty",
	629 : "tstMagnet2",
	630 : "tstPharaoh3",
	631 : "tstCossack3_2",
	632 : "tstCossack4_2",
	633 : "tstStar3",
	634 : "tstWind4",
	635 : "tstMrX3Alt",
	636 : "tstMM10Wily5_3",
	637 : "tstMM10Wily5_4",
	638 : "tstTomahawk4",
	639 : "tstTomahawk4Alt",
	640 : "tstBurst2",
	641 : "tstBurst3",
	642 : "tstBurst3Alt",
	643 : "tstTurbo2",
	644 : "tstTurbo3",
	645 : "tstTurbo4",
	646 : "tstBlock",
	647 : "tstAcid",
	648 : "tstBlast",
	649 : "tstBounce",
	650 : "tstTundra",
	651 : "tstImpact",
	652 : "tstTorch",
	653 : "tstFuse",
	654 : "tstFuse2",
	655 : "tstMM11Wily1",
	656 : "tstMM11Wily1_2",
	657 : "tstMM11Wily2",
	658 : "tstMM11Wily2Alt",
	677 : "tstMM10Wily1_4",
	678 : "tstMM11Wily2Alt2",
	679 : "tstMM11Wily2Alt3",
	681 : "tstMM10Endless30" ,
	682 : "tstBomb2" , # 1.7
	683 : "tstGuts2" ,
	684 : "tstGuts3" ,
	685 : "tstIce2" ,
	686 : "tstMM1Wily1_3" ,
	687 : "tstCommando2" ,
	688 : "tstMM10Endless3Alt2" ,
	689 : "tstSheep2" ,
	690 : "tstTundra2" ,
	691 : "tstTundraAlt" ,
	692 : "tstBomb1PU" ,
	693 : "tstBuilder1PU" ,
	694 : "tstBuilder2PU" ,
	695 : "tstBuilder3PU" ,
	696 : "tstBuilder4PU" ,
	697 : "tstChallengeAltPU" ,
	698 : "tstChallengePU" ,
	699 : "tstCut1PU" ,
	700 : "tstElec1PU" ,
	701 : "tstFire1PU" ,
	702 : "tstGuts1PU" ,
	703 : "tstIce1PU" ,
	722 : "tstOil2PU" ,
	738 : "tstTime2PU" ,
	739 : "tstTime3PU" ,
	741 : "tstCrash2" ,
	742 : "tstHeat2" ,
	743 : "tstMetal2" ,
	744 : "tstMetal3" ,
	745 : "tstMM2Wily1_3" ,
	746 : "tstNeedle3" ,
	747 : "tstSnake3" ,
	748 : "tstSnake4" ,
	749 : "tstMM3Wily1_4" ,
	750 : "tstMM3Wily1_4Alt" ,
	751 : "tstMM3Wily4_2",
	753 : "tstBright3" ,
	754 : "tstBright4" ,
	755 : "tstCossack1_2Alt" ,
	756 : "tstCossack1_3" ,
	757 : "tstCossack1_3Alt" ,
	758 : "tstCossack2_2" ,
	759 : "tstCossack2_3" ,
	760 : "tstCossack4_4" ,
	761 : "tstCossack4_3" ,
	762 : "tstDust" ,
	763 : "tstDustAlt" ,
	764 : "tstDust3" ,
	765 : "tstPharaoh4" ,
	766 : "tstRing2" ,
	767 : "tstRing4" ,
	768 : "tstRing3" ,
	769 : "tstToad2Alt" ,
	770 : "tstToad3" ,
	771 : "tstToad3Alt" ,
	772 : "tstToad4" ,
	773 : "tstToad4Alt" ,
	774 : "tstMM4Wily1_2" ,
	775 : "tstMM4Wily1_3" ,
	776 : "tstMM4Wily2_2" ,
	777 : "tstMM4Wily4_2" ,
	778 : "tstCharge4" ,
	779 : "tstCharge5" ,
	780 : "tstCharge2" ,
	781 : "tstCharge6" ,
	782 : "tstCharge6Alt" ,
	783 : "tstDark1_3" ,
	784 : "tstDark1_3Alt" ,
	785 : "tstDark1_4" ,
	786 : "tstDark1_2" ,
	787 : "tstDark2_2" ,
	788 : "tstDark2_3" ,
	789 : "tstDark2_5" ,
	790 : "tstDark2_6" ,
	791 : "tstDark3_3" ,
	792 : "tstDark3_4" ,
	793 : "tstDark3_5" ,
	794 : "tstGyro2" ,
	795 : "tstGyro3" ,
	796 : "tstGyroAlt3" ,
	797 : "tstStone3" ,
	798 : "tstStone4" ,
	799 : "tstStoneAlt" ,
	800 : "tstWave2" ,
	801 : "tstMM5Wily2_2" ,
	802 : "tstMM5Wily3_2" ,
	803 : "tstBlizzard3" ,
	804 : "tstCentaur3" ,
	805 : "tstCentaur3Alt" ,
	806 : "tstMrX1_4" ,
	807 : "tstMrX1_5" ,
	808 : "tstMrX1_6" ,
	809 : "tstMrX1_3" ,
	810 : "tstMrX2_2" ,
	811 : "tstMrX2_4" ,
	812 : "tstMrX3_2" ,
	813 : "tstMrX4_2" ,
	814 : "tstMrX4Alt",
	815 : "tstPlant2" ,
	816 : "tstPlant3" ,
	817 : "tstMM6Wily1_5" ,
	818 : "tstMM6Wily1_5Alt" ,
	819 : "tstMM6Wily1_6" ,
	820 : "tstMM6Wily1_6Alt" ,
	821 : "tstMM6Wily1" ,
	822 : "tstMM6Wily1_3" ,
	823 : "tstMM6Wily1_3Alt" ,
	824 : "tstMM6Wily1_4" ,
	825 : "tstMM6Wily1_4Alt" ,
	826 : "tstMM6Wily2_2Alt" ,
	827 : "tstMM6Wily3_2" ,
	828 : "tstWind3" ,
	829 : "tstWind2Alt" ,
	830 : "tstYamato3" ,
	831 : "tstYamato3Alt" ,
	832 : "tstYamato2" ,
	833 : "tstYamato2Alt" ,
	834 : "tstCloud2" ,
	835 : "tstFreeze2" ,
	836 : "tstMM7Intro1" ,
	837 : "tstMM7Wily2_2" ,
	838 : "tstMM7Wily3_2" ,
	839 : "tstMM7Wily3_3" ,
	840 : "tstMM7Wily3_4" ,
	841 : "tstMM8Intro2" ,
	842 : "tstMM8Intro2Alt" ,
	843 : "tstSwordAlt" ,
	844 : "tstMM8Wily3_1" ,
	845 : "tstMM8Wily3_2" ,
	846 : "tstMM8Wily3_2Alt" ,
	847 : "tstMM8Wily4_1" ,
	848 : "tstFake3" ,
	849 : "tstMM8Intro1" ,
	850 : "tstMM6Wily2_2" ,
	851 : "tstMM5Wily4_2" ,
	852 : "tstAstro2Alt2" ,
	853 : "tstBuilder3Alt",
	855 : "tstMMBIntro1",
	856 : "tstMMBIntro2",
	857 : "tstGround2",
	858 : "tstCrystalGate1",
	859 : "tstKing1_3",
	860 : "tstPirate2",
	861 : "tstPirate2Alt",
	862 : "tstPirate2Alt2",
	863 : "tstPirate2Alt3",
	864 : "tstMMBIntro3",
	865 : "tstMMBIntro4",
	868 : "tstCold1",
	869 : "tstCold2",
	870 : "tstCold3",
	871 : "tstCold4",
	874 : "tstBurner1",
	875 : "tstBurner2",
	876 : "tstBurner3",
	879 : "tstPirate1",
	880 : "tstPirate3",
	881 : "tstPirate4",
	884 : "tstGround1",
	887 : "tstMmbTengu1",
	888: "tstMmbTengu2",
	889: "tstMmbTengu3",
	890: "tstMmbTengu4",
	893: "tstMagic1",
	895: "tstMagic2",
	898: "tstMmbAstro1",
	899: "tstMmbAstro2",
	900: "tstMmbAstro3",
	901: "tstMmbAstro4",
	904: "tstDynamo1",
	905: "tstDynamo2",
	906: "tstDynamo3",
	909: "tstKing1_1",
	910: "tstKing1_2",
	913: "tstKing2_1",
	916: "tstKing3_1",
	917: "tstKing3_2",
	918: "tstKing3_3",
	919: "tstKing3_4",
	955: "tstDynamo1Alt",
	956: "tstMagic1Alt",
	957: "tstGround3",
	958: "tstGround3Alt",
	959: "tstBurner3Alt",
	960: "tstCold5",
	961: "tstCold6",
	962: "tstCold6Alt",
	963: "tstDynamo4",
	964: "tstKing1_4",
	965: "tstKing2_2",
	966: "tstKing2_2Alt1",
	967: "tstKing2_2Alt2",
	968: "tstMagic3",
	969: "tstMagic3Alt1",
	970: "tstMagic3Alt2",
	971: "tstMagic3Alt3",
	972: "tstMagic3Alt4",
	973: "tstMagic4",
	974: "tstMagic4Alt1",
	975: "tstMagic4Alt2",
	976: "tstMagic5",
	977: "tstMmbAstro1Alt1",
	978: "tstMmbAstro1Alt2",
	979: "tstMmbAstro5",
	980: "tstMmbAstro5Alt",
	981: "tstMmbAstro6",
	982: "tstMmbAstro7",
	983: "tstMmbAstro7Alt",
	984: "tstMmbAstro8",
	985: "tstMmbAstro8Alt",
	986: "tstMmbAstro9",
	987: "tstMmbAstro9Alt",
	988: "tstMMBIntro2Alt",
	989: "tstMMBIntro5",
	990: "tstMMBIntro5Alt",
	991: "tstPirate1Alt",
	992: "tstPirate4Alt",
	993: "tstGBCut1",
	994: "tstGBElec1",
	995: "tstGBFire1",
	996: "tstGBIce1",
	997: "tstGBWilyI1",
	998: "tstGBCredits1",
	999: "tstGBAir",
	1000: "tstGBAirAlt",
	1001: "tstGBCrash",
	1002: "tstGBCrashAlt",
	1003: "tstGBGemini1",
	1004: "tstGBGemini2",
	1005: "tstGBGemini3",
	1006: "tstGBHard",
	1007: "tstGBHardAlt",
	1008: "tstGBMagnet",
	1009: "tstGBMagnetAlt",
	1010: "tstGBMetal1",
	1011: "tstGBMetal2",
	1012: "tstGBMetal2Alt",
	1013: "tstGBMetal3",
	1014: "tstGBNeedle",
	1015: "tstGBNeedleAlt",
	1016: "tstGBTop1",
	1017: "tstGBTop2",
	1018: "tstGBWilyII1",
	1019: "tstGBWilyII2",
	1020: "tstGBWilyII3",
	1021: "tstGBWilyII4",
	1022: "tstGBWood",
	1023: "tstGBDive",
	1024: "tstGBDiveAlt",
	1025: "tstGBDrill",
	1026: "tstGBNapalm",
	1027: "tstGBShadow",
	1028: "tstGBShadowAlt",
	1029: "tstGBShadowAlt2",
	1030: "tstGBShadowAlt3",
	1031: "tstGBSkull",
	1032: "tstGBSkullAlt",
	1033: "tstGBSpark",
	1034: "tstGBBright",
	1035: "tstGBCharge1",
	1036: "tstGBCharge2",
	1037: "tstGBCrystal1",
	1038: "tstGBCrystal1Alt",
	1039: "tstGBCrystal2",
	1040: "tstGBPharaoh",
	1041: "tstGBRing1",
	1042: "tstGBRing2",
	1043: "tstGBRing2Alt",
	1044: "tstGBToad",
	1045: "tstGBWilyIV1",
	1046: "tstGBWilyIV2",
	1047: "tstGBWilyIV3",
	1048: "tstGBWilyIV4",
	1049: "tstGBJupiter1",
	1050: "tstGBJupiter1Alt",
	1051: "tstGBJupiter2",
	1052: "tstGBJupiter3",
	1053: "tstGBJupiter4",
	1054: "tstGBJupiter4Alt",
	1055: "tstGBMars1",
	1056: "tstGBMars2",
	1057: "tstGBMars3",
	1058: "tstGBMars4",
	1059: "tstGBMercury1",
	1060: "tstGBMercury2",
	1061: "tstGBMercury3",
	1062: "tstGBNeptune",
	1063: "tstGBPluto1",
	1064: "tstGBPluto2",
	1065: "tstGBPluto3",
	1066: "tstGBPluto4",
	1067: "tstGBSaturn1",
	1068: "tstGBSaturn2",
	1069: "tstGBSaturn3",
	1070: "tstGBSaturn4",
	1071: "tstGBTerra",
	1072: "tstGBUranus1",
	1073: "tstGBUranus2",
	1074: "tstGBUranus3",
	1075: "tstGBUranus3Alt",
	1076: "tstGBUranus4",
	1077: "tstGBVenus1",
	1078: "tstGBVenus2",
	1079: "tstGBVenus3",
	1080: "tstGBVenus4",
	1081: "tstGBDarkMoon",
	1082: "tstGBDarkMoonAlt1",
	1083: "tstGBDarkMoonAlt2",
	1084: "tstGBDarkMoonAlt3",
	1085: "tstGBDarkMoonAlt4",
	1086: "tstGBDarkMoonAlt5",
	1087: "tstGBWilyV1",
	1088: "tstGBWilyV2",
	1089: "tstGBWilyV3",
	1090: "tstGBWilyV4",
	1091: "tstGBWilyV5",
	1092: "tstGBWilyV6",
	1093: "tstGBVEnding",
	1094: "tstGBIVEnding",
	1165: "tstGBStone",
	1168: "tstGBDive2",
	1169: "tstGBDive2Alt",
	1170: "tstGBDive3",
	1171: "tstGBDive3Alt",
	1172: "tstGBCrash2",
	1173: "tstGBCrash2Alt",
	1174: "tstGBDrill2",
	1175: "tstGBMetal1Alt",
	1176: "tstGBWoodAlt",
	1177: "tstDynamo5",
	1178: "tstBurner4",
	1179: "tstMMBIntro1Alt",
	1180: "tstMmbAstro7Alt2",
	1181: "tstKing3_1Alt",
	1182: "tstKing3_2Alt",
	1183: "tstKing3_3Alt",
	1184: "tstKing3_4Alt",
	1185: "tstGBDust",
	1186: "tstGBDustAlt",
	1187: "tstGBDustAlt2",
	1188: "tstGBDust2",
	1189: "tstGBDust2Alt",
	1190: "tstGBDust2Alt2",
	1191: "tstGBHard2",
	1192: "tstGBHard2Alt",
	1193: "tstGBNeptuneAlt",
	1194: "tstGBNeptune2",
	1195: "tstGBNeptune2Alt",
	1196: "tstGBNeptune3",
	1197: "tstGBNeptune3Alt",
	1198: "tstGBToad2",
	1199: "tstGBToad2Alt",
	1200: "tstCrystalGate2",
	1201: "tstGround4",
	1202: "tstGround5",
	1203: "tstGround6",
	1204: "tstMmbAstro10",
	1205: "tstMmbAstro10Alt",
	1206: "tstMmbTengu5",
	1207: "tstPirate5",
	1208: "tstPirate5Alt",
	1209: "tstMMBIntro4Alt",
	1231: "tstMmbAstro11",
	1232: "tstMmbAstro12",
	1233: "tstBurner5",
	1234: "tstCold2Alt",
	1235: "tstCold2Alt2",
	1236: "tstCold2Alt3",
	1237: "tstMMBIntro6",
	1238: "tstMMBIntro6Alt",
	1239: "tstKing2_1Alt",
	1240: "tstKing2_1Alt2",
	1241: "tstKing2_3",
	1242: "tstKing2_3Alt",
	1243: "tstKing2_3Alt2",
	1244: "tstMagic6",
	1245: "tstKing2_4",
	1246: "tstMM1Wily1Alt",
	1247: "tstMM1Wily1_4",
	1248: "tstAirAlt",
	1249: "tstBubble2",
	1250: "tstBubble2Alt",
	1251: "tstCrash3",
	1252: "tstMM2Wily1_5",
	1253: "tstMM2Wily3_2",
	1255: "tstMM2Wily6Alt",
	1256: "tstNeedleAlt",
	1257: "tstMM3Wily5_2",
	1258: "tstMM3Wily6_2",
	1261: "tstSkullAlt",
	1262: "tstToad5",
	1263: "tstToad5Alt",
	1264: "tstCossack1Alt",
	1265: "tstCossack1_4",
	1266: "tstMM4Wily3Alt",
	1267: "tstStone5",
	1268: "tstChargeAlt",
	1269: "tstDark1_3Alt2",
	1270: "tstBlizzardAlt",
	1271: "tstBlizzard4",
	1272: "tstBlizzard4Alt",
	1273: "tstWindAlt",
	1274: "tstCentaur4",
	1275: "tstCentaur4Alt",
	1276: "tstYamato8",
	1277: "tstYamato8Alt",
	1278: "tstYamato8Alt2",
	1279: "tstYamato8Alt3",
	1280: "tstMrX1_3Alt",
	1281: "tstMrX1_7",
	1282: "tstMrX2_2Alt",
	1283: "tstMrX3_2Alt",
	1284: "tstShadeAlt",
	1285: "tstShade3",
	1286: "tstMM7Wily2Alt",
	1287: "tstMM7Wily4Alt",
	1288: "tstFrost2",
	1289: "tstMM7Wily1Alt",
	1290: "tstAstroAlt",
	1291: "tstTornadoAlt",
	1292: "tstSplash2",
	1293: "tstBallade3",
	1294: "tstPunk5",
	1295: "tstPunk6",
	1296: "tstMM10Endless17Alt",
	1297: "tstGBMetal4",
	1298: "tstGBMetal4Alt",
	1299: "tstGBWood2",
	1300: "tstGBWood2Alt",
	1301: "tstGBWilyII3Alt",
	1302: "tstGBWilyII4Alt",
	1303: "tstGBSparkAlt",
	1304: "tstGBShadow2",
	1305: "tstGBShadow3",
	1306: "tstGBBright2",
	1307: "tstGBPharaoh2",
	1308: "tstUranus1Alt",
	1309: "tstGBSunstar",
	1310: "tstGBSunstar2",
	1311: "tstGBVIntro",
	1312: "tstGBVIntroAlt",
	1313: "tstGBToadAlt",
	1314: "tstBurner3Alt2",
	# 1.9.3.1
	752 : "tstBright2",
	1324: "tstImpact2",
	1325: "tstImpact2Alt",
	1326: "tstImpact3",
	1327: "tstImpact4",
	1328: "tstImpact4Alt",
	1329: "tstImpact5",
	1337: "tstLightLabs",
	1338: "tstFlameAlt",
	1339: "tstFlame2Alt",
	1340: "tstBurst8",
	1341: "tstCloud3",
	1342: "tstCloud3Alt",
	1343: "tstMM7Musuem",
	1344: "tstMM7Musuem2",
	1345: "tstMM7Musuem3",
	1346: "tstMM7Wily1_2",
	1347: "tstMM7Wily1Alt2",
	1348: "tstTengu2",
	1349: "tstTengu2Alt",
	1350: "tstTengu3",
	1351: "tstFrost4",
	1352: "tstAqua3",
	1353: "tstAqua3Alt",
	1354: "tstAqua4",
	1355: "tstAqua4Alt",
	1356: "tstAstro3",
	1357: "tstAstro3Alt",
	1358: "tstOpening",
	1359: "tstOpeningAlt",
	1360: "tstMM11LightLabs",
	1361: "tstBounce2",
	1362: "tstMM11Challenge",
	1363: "tstMM11ChallengeAlt",
	1364: "tstMM11ChallengeAlt2",
	1434: "tstMM2Opening",
	1435: "tstMM3Credits",
	1436: "tstBright5",
	1437: "tstCossack4_5",
	1438: "tstCossack4_6",
	1439: "tstMM4Wily1_4",
	1440: "tstMM4Wily2_3",
	1441: "tstMM4Wily3Alt2",
	1442: "tstCharge7",
	1443: "tstCrystal2",
	1444: "tstCrystal2Alt",
	1445: "tstDark1_2Alt",
	1446: "tstDark1_5",
	1447: "tstMM5Wily1_2Alt",
	1448: "tstMM5Wily1_3",
	1449: "tstMM5Wily2_2Alt",
	1450: "tstStar4",
	1451: "tstStar4Alt",
	1452: "tstWave3",
	1453: "tstMM6Wily1Alt",
	1454: "tstMM6Wily4_2",
	1455: "tstMM6Wily4_3",
	1456: "tstMM6Wily4Alt",
	1457: "tstMrX3_2Alt2",
	1458: "tstTomahawk5",
	1459: "tstTomahawk5Alt",
	1460: "tstTomahawk6",
	1461: "tstBurst4",
	1462: "tstBurst5",
	1463: "tstBurst6",
	1464: "tstBurst7",
	1465: "tstBurstAlt",
	1466: "tstFreeze3",
	1467: "tstFreeze3alt",
	1468: "tstFreezeAlt",
	1469: "tstJunk2",
	1470: "tstJunk3",
	1471: "tstJunk4",
	1472: "tstMM7Intro2",
	1473: "tstMM7Shop",
	1474: "tstMM7Wily1_3",
	1475: "tstMM7Wily1_4",
	1476: "tstMM7Wily2_3",
	1477: "tstMM7Wily2_3Alt",
	1478: "tstMM7Wily2_4",
	1479: "tstMM7Wily4_2",
	1480: "tstMM7Wily4_3",
	1481: "tstShade4",
	1482: "tstShadeAlt2",
	1483: "tstSlash2",
	1484: "tstClown2",
	1485: "tstClown3",
	1486: "tstClown4",
	1487: "tstClown5",
	1488: "tstDuo",
	1489: "tstDuo2",
	1490: "tstDuo3",
	1491: "tstDuo4",
	1492: "tstFrost3",
	1493: "tstFrost3Alt",
	1494: "tstGrenade2",
	1495: "tstGrenade3",
	1496: "tstGrenade4",
	1497: "tstMM8Wily3_3",
	1498: "tstMM8Wily3_4",
	1499: "tstMM8Wily3_5",
	1500: "tstMM8Wily3_5Alt",
	1501: "tstMM8Wily4_2",
	1502: "tstMM8Wily4_2Alt",
	1503: "tstSearch2",
	1504: "tstSearch3",
	1505: "tstSword2",
	1506: "tstSword2Alt",
	1507: "tstSword2Alt2",
	1508: "tstSword3",
	1509: "tstSword3Alt",
	1510: "tstSword3Alt2",
	1511: "tstConcrete4",
	1512: "tstFake4",
	1513: "tstGalaxy2",
	1514: "tstHornet2",
	1515: "tstJewel2",
	1516: "tstMagma3",
	1517: "tstMM9Ending",
	1518: "tstMM9Wily1_3",
	1519: "tstMM9Wily1_4",
	1520: "tstMM9Wily2_2",
	1521: "tstMM9Wily2_3",
	1522: "tstMM9Wily3_2",
	1523: "tstMM9Wily3_3",
	1524: "tstMM9Wily4_2",
	1525: "tstMM9Wily4_3",
	1526: "tstPlug2",
	1527: "tstPlug2Alt",
	1528: "tstPlug3",
	1529: "tstPlugAlt",
	1530: "tstSplash3",
	1531: "tstTornado3",
	1532: "tstBallade4",
	1533: "tstBass",
	1534: "tstChill3",
	1535: "tstCommandoAlt",
	1536: "tstEnker7",
	1537: "tstOpening2",
	1538: "tstOpening3",
	1539: "tstOpening4",
	1540: "tstMM10Light",
	1541: "tstMM10LightAlt",
	1542: "tstMM10Wily1_5",
	1543: "tstMM10Wily2_4",
	1544: "tstMM10Wily2_5",
	1545: "tstMM10Wily4_2",
	1546: "tstMM10Wily4_2Alt",
	1547: "tstMM10Wily4_3",
	1548: "tstMM10Wily4_4",
	1551: "tstNitro3",
	1552: "tstPunk7",
	1553: "tstStrike3",
	1554: "tstBlast2",
	1555: "tstBlast3",
	1556: "tstBlast4",
	1557: "tstBlast5",
	1558: "tstBlast5Alt",
	1559: "tstBlock2",
	1560: "tstFuse3",
	1561: "tstFuse3Alt",
	1562: "tstFuse4",
	1563: "tstFuse5",
	1570: "tstMM11Wily1_3",
	1571: "tstMM11Wily1_4",
	1572: "tstMM11Wily1_5",
	1573: "tstMM11Wily3",
	1574: "tstMM11WilyAcid",
	1575: "tstMM11WilyBlast",
	1576: "tstMM11WilyBlock",
	1577: "tstMM11WilyBounce",
	1578: "tstMM11WilyFuse",
	1579: "tstMM11WilyImpact",
	1580: "tstMM11WilyTorch",
	1581: "tstMM11WilyTundra",
	1582: "tstMM11WilyTundraAlt",
	1583: "tstTorch2",
	1584: "tstGBDive2Alt2",
	1585: "tstGBDive2Alt3",
	1586: "tstGBDive3Alt2",
	1587: "tstGBDive3Alt3",
	1588: "tstGBDiveAlt2",
	1589: "tstGBDiveAlt3",
	1590: "tstBounceAlt",
	1591: "tstBounceAlt2",
	1592: "tstBounceAlt3",
	1593: "tstBounceAlt4",
	1594: "tstBright6",
	1595: "tstBuilder2PUAlt",
	1596: "tstAquaAlt",
	1597: "tstAqua2",
	1598: "tstAqua2Alt",
	1599: "tstTenguAlt",
	1600: "tstTop2Alt",
	1601: "tstTundra2Alt",
	1602: "tstTundra3",
	1603: "tstMM8Wily1Alt",
	1604: "tstMM11Wily1_2Alt",
	1605: "tstStone6",
	1606: "tstYamato4Alt2",
	1607: "tstYamato4Alt3",
	1608: "tstAqua_Overwrite",
	1609: "tstCloud_Overwrite",
	1610: "tstClown_Overwrite",
	1611: "tstSearch_Overwrite",
	1612: "tstSlash_Overwrite",
	1613: "tstMM8Wily2_Overwrite",
	1614: "tstMM8Wily2Alt_Overwrite",
	1615: "tstBounce_Overwrite",
	1616: "tstFuse2_Overwrite",
	1617: "tstTundra2_Overwrite",
	1618: "tstMM11Wily1_2_Overwrite",
	1622: "tstSpring2_Overwrite",
	1623: "tstSpring_Overwrite",
}

const SUBTILE_POSITION_IDS: Dictionary = {
	Vector2(1, 1) : 0,
	Vector2(18, 1) : 1,
	Vector2(36, 1) : 2,
	Vector2(53, 1) : 3,
	Vector2(71, 1) : 4,
	Vector2(88, 1) : 5,
	Vector2(106, 1) : 6,
	Vector2(123, 1) : 7,
	Vector2(141, 1) : 8,
	Vector2(158, 1) : 9,
	
	Vector2(1, 18) : 10,
	Vector2(18, 18) : 11,
	Vector2(36, 18) : 12,
	Vector2(53, 18) : 13,
	Vector2(71, 18) : 14,
	Vector2(88, 18) : 15,
	Vector2(106, 18) : 16,
	Vector2(123, 18) : 17,
	Vector2(141, 18) : 18,
	Vector2(158, 18) : 19,
	
	Vector2(1, 36) : 20,
	Vector2(18, 36) : 21,
	Vector2(36, 36) : 22,
	Vector2(53, 36) : 23,
	Vector2(71, 36) : 24,
	Vector2(88, 36) : 25,
	Vector2(106, 36) : 26,
	Vector2(123, 36) : 27,
	Vector2(141, 36) : 28,
	Vector2(158, 36) : 29,
	
	Vector2(1, 53) : 30,
	Vector2(18, 53) : 31,
	Vector2(36, 53) : 32,
	Vector2(53, 53) : 33,
	Vector2(71, 53) : 34,
	Vector2(88, 53) : 35,
	Vector2(106, 53) : 36,
	Vector2(123, 53) : 37,
	Vector2(141, 53) : 38,
	Vector2(158, 53) : 39,
	
	Vector2(1, 71) : 40,
	Vector2(18, 71) : 41,
	Vector2(36, 71) : 42,
	Vector2(53, 71) : 43,
	Vector2(71, 71) : 44,
	Vector2(88, 71) : 45,
	Vector2(106, 71) : 46,
	Vector2(123, 71) : 47,
	Vector2(141, 71) : 48,
	
	Vector2(1, 88) : 49,
	Vector2(18, 88) : 50,
	Vector2(36, 88) : 51,
	Vector2(53, 88) : 52,
	Vector2(71, 88) : 53,
	Vector2(88, 88) : 54,
	Vector2(106, 88) : 55,
	Vector2(123, 88) : 56,
	
	Vector2(1, 106) : 57,
	Vector2(18, 106) : 58,
	Vector2(36, 106) : 59,
	Vector2(53, 106) : 60,
	Vector2(71, 106) : 61,
	Vector2(88, 106) : 62,
	Vector2(106, 106) : 63,
	Vector2(123, 106) : 64,
	
	Vector2(1, 123) : 65,
	Vector2(18, 123) : 66,
	Vector2(36, 123) : 67,
	Vector2(53, 123) : 68,
	Vector2(71, 123) : 69,
	Vector2(88, 123) : 70,
	Vector2(106, 123) : 71,
	Vector2(123, 123) : 72,
	
	Vector2(106, 141) : 73,
	Vector2(123, 141) : 74,
	
	Vector2(106, 158) : 75,
	Vector2(123, 158) : 76,
	Vector2(1, 158) : 77,
	Vector2(18, 158) : 78,
	Vector2(36, 158) : 79,
}

# These are used for generating a tileset, adds some custom texture offset from the top left corner.
# if ommitted, returns a (0, 0) offset
# TileID : OffsetToAdd
const SUBTILE_TEXTURE_OFFSETS: Dictionary = { }

# TileID : GameID
const TILE_GAME_IDS: Dictionary = {
	0 : 6 ,
	1 : 2 ,
	3 : 1 ,
	4 : 1 ,
	5 : 1 ,
	21 : 1 ,
	22 : 1 ,
	23 : 1 ,
	24 : 2 ,
	25 : 2 ,
	26 : 2 ,
	27 : 2 ,
	28 : 2 ,
	29 : 2 ,
	30 : 3 ,
	31 : 3 ,
	32 : 3 ,
	33 : 3 ,
	34 : 3 ,
	35 : 3 ,
	36 : 3 ,
	37 : 4 ,
	38 : 4 ,
	39 : 4 ,
	40 : 4 ,
	41 : 4 ,
	42 : 4 ,
	43 : 4 ,
	44 : 4 ,
	45 : 5 ,
	46 : 5 ,
	47 : 5 ,
	48 : 5 ,
	49 : 5 ,
	50 : 5 ,
	51 : 6 ,
	52 : 6 ,
	53 : 6 ,
	54 : 6 ,
	55 : 6 ,
	129 : 1 ,
	130 : 1 ,
	131 : 1 ,
	132 : 2 ,
	133 : 2 ,
	134 : 2 ,
	135 : 2 ,
	136 : 3 ,
	137 : 3 ,
	138 : 3 ,
	142 : 4 ,
	143 : 4 ,
	144 : 4 ,
	145 : 4 ,
	146 : 5 ,
	147 : 5 ,
	148 : 5 ,
	149 : 5 ,
	150 : 6 ,
	151 : 6 ,
	152 : 6 ,
	153 : 6 ,
	157 : 199 ,
	158 : 7 ,
	159 : 7 ,
	160 : 199 ,
	161 : 7 ,
	162 : 7 ,
	163 : 7 ,
	164 : 7 ,
	165 : 199 ,
	166 : 7 ,
	167 : 1 ,
	168 : 1 ,
	169 : 1 ,
	170 : 2 ,
	171 : 3 ,
	172 : 3 ,
	173 : 3 ,
	174 : 5 ,
	175 : 6 ,
	198 : 199 ,
	199 : 2 ,
	200 : 2 ,
	201 : 2 ,
	202 : 2 ,
	203 : 2 ,
	204 : 3 ,
	205 : 3 ,
	206 : 3 ,
	207 : 3 ,
	208 : 3 ,
	209 : 4 ,
	210 : 4 ,
	211 : 4 ,
	212 : 4 ,
	213 : 4 ,
	214 : 4 ,
	215 : 4 ,
	216 : 4 ,
	217 : 4 ,
	218 : 5 ,
	219 : 5 ,
	220 : 5 ,
	221 : 5 ,
	222 : 5 ,
	223 : 5 ,
	224 : 5 ,
	225 : 5 ,
	226 : 5 ,
	227 : 6 ,
	228 : 6 ,
	229 : 6 ,
	230 : 6 ,
	231 : 6 ,
	232 : 6 ,
	233 : 6 ,
	234 : 6 ,
	235 : 6 ,
	236 : 6 ,
	237 : 6 ,
	238 : 6 ,
	239 : 6 ,
	240 : 6 ,
	241 : 6 ,
	242 : 6 ,
	243 : 6 ,
	244 : 6 ,
	245 : 6 ,
	246 : 6 ,
	247 : 199 ,
	248 : 199 ,
	249 : 6 ,
	250 : 6 ,
	251 : 6 ,
	252 : 6 ,
	253 : 6 ,
	254 : 6 ,
	255 : 6 ,
	256 : 9 ,
	257 : 9 ,
	258 : 9 ,
	259 : 9 ,
	260 : 9 ,
	261 : 9 ,
	262 : 9 ,
	263 : 9 ,
	264 : 9 ,
	265 : 9 ,
	266 : 9 ,
	267 : 9 ,
	268 : 9 ,
	269 : 9 ,
	270 : 9 ,
	271 : 9 ,
	272 : 9 ,
	273 : 9 ,
	274 : 9 ,
	275 : 9 ,
	276 : 9 ,
	277 : 9 ,
	278 : 9 ,
	279 : 9 ,
	280 : 9 ,
	281 : 9 ,
	282 : 9 ,
	283 : 9 ,
	284 : 9 ,
	285 : 5 ,
	286 : 9 ,
	287 : 9 ,
	288 : 9 ,
	432 : 4 ,
	433 : 3 ,
	435 : 3 ,
	436 : 3 ,
	437 : 5 ,
	438 : 5 ,
	439 : 5 ,
	440 : 6 ,
	441 : 6 ,
	442 : 6 ,
	443 : 6 ,
	444 : 9 ,
	445 : 9 ,
	446 : 2 ,
	447 : 2 ,
	448 : 2 ,
	449 : 2 ,
	450 : 2 ,
	451 : 3 ,
	452 : 3 ,
	453 : 3 ,
	454 : 3 ,
	455 : 3 ,
	456 : 3 ,
	457 : 2 ,
	458 : 199 ,
	459 : 9 ,
	460 : 9 ,
	462 : 8 ,
	463 : 8 ,
	464 : 8 ,
	465 : 8 ,
	466 : 199 ,
	467 : 8 ,
	468 : 8 ,
	469 : 8 ,
	470 : 8 ,
	471 : 199 ,
	472 : 199 ,
	473 : 8 ,
	475 : 199 ,
	476 : 199 ,
	477 : 1 ,
	478 : 1 ,
	479 : 4 ,
	480 : 5 ,
	481 : 5 ,
	482 : 7 ,
	483 : 7 ,
	484 : 7 ,
	485 : 7 ,
	486 : 9 ,
	487 : 9 ,
	488 : 10 ,
	489 : 10 ,
	490 : 10 ,
	491 : 10 ,
	492 : 10 ,
	493 : 10 ,
	494 : 10 ,
	495 : 10 ,
	496 : 10 ,
	497 : 10 ,
	498 : 10 ,
	499 : 10 ,
	500 : 10 ,
	501 : 10 ,
	502 : 10 ,
	503 : 10 ,
	504 : 10 ,
	505 : 10 ,
	506 : 10 ,
	507 : 10 ,
	508 : 10 ,
	509 : 10 ,
	510 : 10 ,
	511 : 10 ,
	512 : 10 ,
	513 : 10 ,
	514 : 10 ,
	515 : 10 ,
	516 : 10 ,
	517 : 10 ,
	518 : 10 ,
	519 : 10 ,
	520 : 10 ,
	521 : 10 ,
	522 : 10 ,
	523 : 10 ,
	524 : 10 ,
	525 : 10 ,
	526 : 10 ,
	527 : 10 ,
	528 : 10 ,
	529 : 10 ,
	530 : 10 ,
	531 : 10 ,
	532 : 10 ,
	533 : 10 ,
	534 : 10 ,
	535 : 10 ,
	536 : 10 ,
	537 : 10 ,
	538 : 10 ,
	539 : 10 ,
	540 : 10 ,
	541 : 10 ,
	542 : 10 ,
	543 : 10 ,
	544 : 10 ,
	545 : 10 ,
	546 : 10 ,
	547 : 10 ,
	548 : 10 ,
	549 : 10 ,
	550 : 10 ,
	551 : 10 ,
	552 : 10 ,
	553 : 10 ,
	554 : 10 ,
	555 : 10 ,
	556 : 10 ,
	557 : 10 ,
	558 : 10 ,
	559 : 10 ,
	560 : 10 ,
	561 : 10 ,
	562 : 10 ,
	563 : 10 ,
	564 : 10 ,
	565 : 10 ,
	566 : 10 ,
	567 : 10 ,
	568 : 10 ,
	569 : 10 ,
	570 : 10 ,
	571 : 10 ,
	572 : 10 ,
	629 : 3 ,
	630 : 4 ,
	631 : 4 ,
	632 : 4 ,
	633 : 5 ,
	634 : 6 ,
	635 : 6 ,
	636 : 10 ,
	637 : 10 ,
	638 : 6 ,
	639 : 6 ,
	640 : 7 ,
	641 : 7 ,
	642 : 7 ,
	643 : 7 ,
	644 : 7 ,
	645 : 7 ,
	646 : 11 ,
	647 : 11 ,
	648 : 11 ,
	649 : 199 ,
	650 : 11 ,
	651 : 11 ,
	652 : 11 ,
	653 : 11 ,
	654 : 199 ,
	655 : 11 ,
	656 : 199 ,
	657 : 11 ,
	658 : 11 ,
	677 : 10 ,
	678 : 11 ,
	679 : 11 ,
	681 : 10 ,
	682 : 1 ,
	683 : 1 ,
	684 : 1 ,
	685 : 1 ,
	686 : 1 ,
	687 : 10 ,
	688 : 10 ,
	689 : 10 ,
	690 : 199 ,
	691 : 11 ,
	692 : 1 ,
	693 : 1 ,
	694 : 1 ,
	695 : 1 ,
	696 : 1 ,
	697 : 1 ,
	698 : 1 ,
	699 : 1 ,
	700 : 1 ,
	701 : 1 ,
	702 : 1 ,
	703 : 1 ,
	722 : 1 ,
	738 : 1 ,
	739 : 1 ,
	741 : 2 ,
	742 : 2 ,
	743 : 2 ,
	744 : 2 ,
	745 : 2 ,
	746 : 3 ,
	747 : 3 ,
	748 : 3 ,
	749 : 3 ,
	750 : 3 ,
	751 : 3 ,
	753 : 4 ,
	754 : 4 ,
	755 : 4 ,
	756 : 4 ,
	757 : 4 ,
	758 : 4 ,
	759 : 4 ,
	760 : 4 ,
	761 : 4 ,
	762 : 4 ,
	763 : 4 ,
	764 : 4 ,
	765 : 4 ,
	766 : 4 ,
	767 : 4 ,
	768 : 4 ,
	769 : 4 ,
	770 : 4 ,
	771 : 4 ,
	772 : 4 ,
	773 : 4 ,
	774 : 4 ,
	775 : 4 ,
	776 : 4 ,
	777 : 4 ,
	778 : 5 ,
	779 : 5 ,
	780 : 5 ,
	781 : 5 ,
	782 : 5 ,
	783 : 5 ,
	784 : 5 ,
	785 : 5 ,
	786 : 5 ,
	787 : 5 ,
	788 : 5 ,
	789 : 5 ,
	790 : 5 ,
	791 : 5 ,
	792 : 5 ,
	793 : 5 ,
	794 : 5 ,
	795 : 5 ,
	796 : 5 ,
	797 : 5 ,
	798 : 5 ,
	799 : 199 ,
	800 : 5 ,
	801 : 5 ,
	802 : 5 ,
	803 : 6 ,
	804 : 6 ,
	805 : 6 ,
	806 : 6 ,
	807 : 6 ,
	808 : 6 ,
	809 : 6 ,
	810 : 6 ,
	811 : 6 ,
	812 : 6 ,
	813 : 6 ,
	814 : 6 ,
	815 : 6 ,
	816 : 6 ,
	817 : 6 ,
	818 : 6 ,
	819 : 6 ,
	820 : 6 ,
	821 : 6 ,
	822 : 6 ,
	823 : 6 ,
	824 : 6 ,
	825 : 6 ,
	826 : 6 ,
	827 : 6 ,
	828 : 6 ,
	829 : 6 ,
	830 : 6 ,
	831 : 6 ,
	832 : 6 ,
	833 : 6 ,
	834 : 7 ,
	835 : 7 ,
	836 : 199 ,
	837 : 7 ,
	838 : 7 ,
	839 : 7 ,
	840 : 7 ,
	841 : 8 ,
	842 : 8 ,
	843 : 8 ,
	844 : 8 ,
	845 : 8 ,
	846 : 8 ,
	847 : 8 ,
	848 : 9 ,
	849 : 8 ,
	850 : 6 ,
	851 : 5 ,
	852 : 8 ,
	853 : 1,
	855 : 99,
	856 : 99,
	857 : 99,
	858 : 99,
	859 : 99,
	860 : 99,
	861 : 99,
	862 : 99,
	863 : 99,
	864 : 99,
	865 : 99,
	868 : 99,
	869 : 99,
	870 : 99,
	871 : 99,
	874 : 99,
	875 : 99,
	876 : 99,
	879 : 99,
	880 : 99,
	881 : 99,
	884 : 99,
	887 : 99,
	888: 99,
	889: 99,
	890: 99,
	893: 99,
	895: 99,
	898: 99,
	899: 99,
	900: 99,
	901: 99,
	904: 99,
	905: 99,
	906: 99,
	909: 99,
	910: 99,
	913: 99,
	916: 99,
	917: 99,
	918: 99,
	919: 99,
	955: 99,
	956: 99,
	957: 99,
	958: 99,
	959: 99,
	960: 99,
	961: 99,
	962: 99,
	963: 99,
	964: 99,
	965: 99,
	966: 99,
	967: 99,
	968: 99,
	969: 99,
	970: 99,
	971: 99,
	972: 99,
	973: 99,
	974: 99,
	975: 99,
	976: 99,
	977: 99,
	978: 99,
	979: 99,
	980: 99,
	981: 99,
	982: 99,
	983: 99,
	984: 99,
	985: 99,
	986: 99,
	987: 99,
	988: 99,
	989: 99,
	990: 99,
	991: 99,
	992: 99,
	993: 101,
	994: 101,
	995: 101,
	996: 101,
	997: 101,
	998: 101,
	999: 102,
	1000: 102,
	1001: 102,
	1002: 102,
	1003: 103,
	1004: 103,
	1005: 103,
	1006: 102,
	1007: 102,
	1008: 102,
	1009: 102,
	1010: 102,
	1011: 102,
	1012: 102,
	1013: 102,
	1014: 102,
	1015: 102,
	1016: 102,
	1017: 102,
	1018: 102,
	1019: 102,
	1020: 102,
	1021: 102,
	1022: 102,
	1023: 103,
	1024: 103,
	1025: 103,
	1026: 103,
	1027: 103,
	1028: 103,
	1029: 103,
	1030: 103,
	1031: 103,
	1032: 103,
	1033: 103,
	1034: 104,
	1035: 104,
	1036: 104,
	1037: 104,
	1038: 104,
	1039: 104,
	1040: 104,
	1041: 104,
	1042: 104,
	1043: 104,
	1044: 104,
	1045: 104,
	1046: 104,
	1047: 104,
	1048: 104,
	1049: 105,
	1050: 105,
	1051: 105,
	1052: 105,
	1053: 105,
	1054: 105,
	1055: 105,
	1056: 105,
	1057: 105,
	1058: 105,
	1059: 105,
	1060: 105,
	1061: 105,
	1062: 105,
	1063: 105,
	1064: 105,
	1065: 105,
	1066: 105,
	1067: 105,
	1068: 105,
	1069: 105,
	1070: 105,
	1071: 105,
	1072: 105,
	1073: 105,
	1074: 105,
	1075: 105,
	1076: 105,
	1077: 105,
	1078: 105,
	1079: 105,
	1080: 105,
	1081: 105,
	1082: 105,
	1083: 105,
	1084: 105,
	1085: 105,
	1086: 105,
	1087: 105,
	1088: 105,
	1089: 105,
	1090: 105,
	1091: 105,
	1092: 105,
	1093: 105,
	1094: 105,
	1165: 104,
	1168: 103,
	1169: 103,
	1170: 103,
	1171: 103,
	1172: 102,
	1173: 102,
	1174: 103,
	1175: 102,
	1176: 102,
	1177: 99,
	1178: 99,
	1179: 99,
	1180: 99,
	1181: 99,
	1182: 99,
	1183: 99,
	1184: 99,
	1185: 103,
	1186: 103,
	1187: 103,
	1188: 103,
	1189: 103,
	1190: 103,
	1191: 102,
	1192: 102,
	1193: 105,
	1194: 105,
	1195: 105,
	1196: 105,
	1197: 105,
	1198: 104,
	1199: 104,
	1200: 99,
	1201: 99,
	1202: 99,
	1203: 99,
	1204: 99,
	1205: 99,
	1206: 99,
	1207: 99,
	1208: 99,
	1209: 99,
	1231: 99,
	1232: 99,
	1233: 99,
	1234: 99,
	1235: 99,
	1236: 99,
	1237: 99,
	1238: 99,
	1239: 99,
	1240: 99,
	1241: 99,
	1242: 99,
	1243: 99,
	1244: 99,
	1245: 99,
	1246: 1,
	1247: 1,
	1248: 2,
	1249: 2,
	1250: 2,
	1251: 2,
	1252: 2,
	1253: 2,
	1255: 2,
	1256: 3,
	1257: 3,
	1258: 3,
	1261: 4,
	1262: 4,
	1263: 4,
	1264: 4,
	1265: 4,
	1266: 4,
	1267: 5,
	1268: 5,
	1269: 5,
	1270: 6,
	1271: 6,
	1272: 6,
	1273: 6,
	1274: 6,
	1275: 6,
	1276: 6,
	1277: 6,
	1278: 6,
	1279: 6,
	1280: 6,
	1281: 6,
	1282: 6,
	1283: 6,
	1284: 7,
	1285: 7,
	1286: 7,
	1287: 7,
	1288: 8,
	1289: 7,
	1290: 8,
	1291: 9,
	1292: 9,
	1293: 10,
	1294: 10,
	1295: 10,
	1296: 10,
	1297: 102,
	1298: 102,
	1299: 102,
	1300: 102,
	1301: 102,
	1302: 102,
	1303: 103,
	1304: 103,
	1305: 103,
	1306: 104,
	1307: 104,
	1308: 105,
	1309: 105,
	1310: 105,
	1311: 105,
	1312: 105,
	1313: 104,
	1314: 99,
	# 1.9.3.1
	752 : 4,
	1324: 11,
	1325: 11,
	1326: 11,
	1327: 11,
	1328: 11,
	1329: 11,
	1337: 3,
	1338: 6,
	1339: 6,
	1340: 7,
	1341: 7,
	1342: 7,
	1343: 7,
	1344: 7,
	1345: 7,
	1346: 7,
	1347: 7,
	1348: 8,
	1349: 8,
	1350: 8,
	1351: 8,
	1352: 8,
	1353: 8,
	1354: 8,
	1355: 8,
	1356: 8,
	1357: 8,
	1358: 10,
	1359: 10,
	1360: 11,
	1361: 11,
	1362: 11,
	1363: 11,
	1364: 11,
	1434: 2,
	1435: 3,
	1436: 4,
	1437: 4,
	1438: 4,
	1439: 4,
	1440: 4,
	1441: 4,
	1442: 5,
	1443: 5,
	1444: 5,
	1445: 5,
	1446: 5,
	1447: 5,
	1448: 5,
	1449: 5,
	1450: 5,
	1451: 5,
	1452: 5,
	1453: 6,
	1454: 6,
	1455: 6,
	1456: 6,
	1457: 6,
	1458: 6,
	1459: 6,
	1460: 6,
	1461: 7,
	1462: 7,
	1463: 7,
	1464: 7,
	1465: 7,
	1466: 7,
	1467: 7,
	1468: 7,
	1469: 7,
	1470: 7,
	1471: 7,
	1472: 7,
	1473: 7,
	1474: 7,
	1475: 7,
	1476: 7,
	1477: 7,
	1478: 7,
	1479: 7,
	1480: 7,
	1481: 7,
	1482: 7,
	1483: 7,
	1484: 8,
	1485: 8,
	1486: 8,
	1487: 8,
	1488: 8,
	1489: 8,
	1490: 8,
	1491: 8,
	1492: 8,
	1493: 8,
	1494: 8,
	1495: 8,
	1496: 8,
	1497: 8,
	1498: 8,
	1499: 8,
	1500: 8,
	1501: 8,
	1502: 8,
	1503: 8,
	1504: 8,
	1505: 8,
	1506: 8,
	1507: 8,
	1508: 8,
	1509: 8,
	1510: 8,
	1511: 9,
	1512: 9,
	1513: 9,
	1514: 9,
	1515: 9,
	1516: 9,
	1517: 9,
	1518: 9,
	1519: 9,
	1520: 9,
	1521: 9,
	1522: 9,
	1523: 9,
	1524: 9,
	1525: 9,
	1526: 9,
	1527: 9,
	1528: 9,
	1529: 9,
	1530: 9,
	1531: 9,
	1532: 10,
	1533: 10,
	1534: 10,
	1535: 10,
	1536: 10,
	1537: 10,
	1538: 10,
	1539: 10,
	1540: 10,
	1541: 10,
	1542: 10,
	1543: 10,
	1544: 10,
	1545: 10,
	1546: 10,
	1547: 10,
	1548: 10,
	1551: 10,
	1552: 10,
	1553: 10,
	1554: 11,
	1555: 11,
	1556: 11,
	1557: 11,
	1558: 11,
	1559: 11,
	1560: 11,
	1561: 11,
	1562: 11,
	1563: 11,
	1570: 11,
	1571: 11,
	1572: 11,
	1573: 11,
	1574: 11,
	1575: 11,
	1576: 11,
	1577: 11,
	1578: 11,
	1579: 11,
	1580: 11,
	1581: 11,
	1582: 11,
	1583: 11,
	1584: 103,
	1585: 103,
	1586: 103,
	1587: 103,
	1588: 103,
	1589: 103,
	1590: 11,
	1591: 11,
	1592: 11,
	1593: 11,
	1594: 4,
	1595: 1,
	1596: 8,
	1597: 8,
	1598: 8,
	1599: 8,
	1600: 3,
	1601: 11,
	1602: 11,
	1603: 8,
	1604: 11,
	1605: 5,
	1606: 6,
	1607: 6,
	1608: 8,
	1609: 7,
	1610: 8,
	1611: 8,
	1612: 7,
	1613: 8,
	1614: 8,
	1615: 11,
	1616: 11,
	1617: 11,
	1618: 11,
	1622: 7,
	1623: 7,
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
