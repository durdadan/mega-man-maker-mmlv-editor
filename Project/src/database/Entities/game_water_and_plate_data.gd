# Script_Name_Here
# Written by: JDE

extends Reference

class_name GameWaterAndPlateData

"""
	a list of the game water and plates by their ID (Sorted by appearance of rows and columns in the editor).
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

const OBJECT_DATA: Dictionary = {
	178: "Ice Water",
	180: "Bubble Water",
	181: "Wily Water 1",
	182: "Gemini Water",
	183: "Wily Water 2",
	184: "Dive Water",
	185: "Toad Water",
	186: "Wily Water 3",
	187: "Wave Water",
	188: "Wily Water 4",
	189: "Blizzard Water",
	179: "Centaur Water",
	177: "Yamato Water",
	194: "Yamato Water (Alt)",
	190: "Plant Water",
	191: "Wily Water 5",
	192: "Splash Water",
	193: "Wily Water 6",
	621: "Endless Water",
	622: "Pump Water",
	623: "Wily Water 7",
	624: "Wily Water 8",
	625: "Wily Water 9",
	626: "Endless Water 2",
	627: "Endless Water 3",
	628: "Challenge Water",
	1153: "Wood Water GB",
	1154: "Wood Water GB (Alt)",
	1210: "Top Water GB",
	1211: "Top Water GB (Alt)",
	1159: "Neptune Water GB",
	1160: "Neptune Water GB (Alt)",
	1155: "Dive Water GB",
	1156: "Dive Water GB (Alt)",
	1157: "Toad Water GB",
	1158: "Toad Water GB (Alt)",
	1161: "Cold Water",
	1162: "Pirate Water",
	1163: "Intro Water (MMB)",
	1687: "Aqua Water",
	1095: "Fire Lava",
	1096: "Heat Lava",
	1097: "Junk Lava",
	1098: "Sword Lava",
	1099: "Shadow Lava",
	1100: "Magma Lava",
	1101: "Solar Lava",
	1102: "King 1 Lava",
	139: "Wily Plate",
	140: "Cossack Plate",
	141: "Mr. X Plate",
	176: "Light Plate",
	195: "Right Plate",
	1152: "Stardroid Plate",
	854: "King Plate",
	196: "Drop Shadow",
	197: "Pit Shadow",
	1213: "Wall Shadow",
	1214: "Corner Shadow (Outer)",
	1215: "Corner Shadow (Inner)",
	1216: "Full Shadow",
	1212: "Sun Rays",
	1315: "Fire Fence",
	1316: "Guts Fence",
	1317: "Bush",
	1318: "MM1 Statue",
	1319: "Grass",
	1320: "Air Goblin",
	1321: "Water Pressure",
	1322: "Crash Orb",
	1323: "Wood Grass",
	1330: "Top Glass Plate",
	1332: "Magnet Fuse",
	1331: "Needle Background Plates",
	1334: "Wily 1 Sewer",
	1335: "Wily 1 Valve",
	1336: "Wily 4 Exit",
	1365: "Pharaoh Block",
	1366: "Ring Pedestal",
	1367: "Crystal Block",
	1368: "Gravity Magnet",
	1369: "Gyro Fan (Horizontal)",
	1655: "Gyro Fan (Vertical)",
	1370: "Napalm Grass",
	1372: "Wily 1 Vent",
	1371: "Wily 1 Pulley",
	1375: "Blizzard Block",
	1376: "X Fortress Pane Small",
	1377: "X Fortress Pane Large",
	1621: "Vertical Rain",
	1640: "Hornet Flower",
	1641: "Small Jewel",
	1642: "Big Jewel",
	1643: "Plug Screen",
	1644: "Shell Plate",
	1645: "Waterfall",
	1646: "Fence",
	1647: "Wily Sphere",
	1648: "Commando Base Column",
	1649: "Void Tile",
	1650: "Bubble Glass",
	1651: "Small Tube",
	1654: "Small Tube",
	1652: "Solar Reactor",
	1653: "Strike Ball",
	1656: "Grenade Fence",
	1657: "Dynamo Girder",
	1658: "King Pillar",
	1659: "Shade Chain",
	1668: "Shade Chain (Back)",
	1660: "Shade Robot",
	1661: "Freeze Skeleton",
	1662: "Freeze Skeleton Post",
	1663: "Turbo Signal",
	1665: "Shade Webs",
	1666: "Turbo Crate",
	1667: "Turbo Tire",
	1664: "Tengu Fan",
	1669: "Tengu Platform",
	1670: "Clown Skull Plate",
	1672: "Clown House",
	1721: "Duo Light (Front)",
	1722: "Duo Light (Back)",
	1727: "Glass Soldier",
	1728: "Coat of Arms",
	1731: "King Box",
	1729: "Blade Pillar",
	1673: "Clown Buoy",
	1674: "Clown Map",
	1723: "Wily Lab Alert",
	1724: "Wily Lab Danger",
	1671: "Intro Bush",
	1675: "Lamppost",
	1678: "Torch Grass",
	1730: "Torch Grass",
	1676: "Torch Grass",
	1677: "Torch Grass (Tile)",
	1679: "Torch Totem",
	1680: "Torch Totem Base",
	1681: "Impact Crate",
	1682: "Acid Floor Light",
	1683: "Acid Hazard Plate",
	1684: "Tundra Lightpost",
	1685: "Small Plushie",
	1686: "Big Toy",
	1688: "Small House",
	1689: "Big House",
	1691: "Background Fence",
	1692: "Background Fence",
	1693: "Background Chute",
	1694: "Fire Fence (PU)",
	1717: "Junk Fence",
	1718: "Spring Frame",
	1719: "Spring Frame Smaller",
	1720: "Slash Sign",
	1695: "Background Wall",
	1696: "Background Window",
	1701: "Snake Bricks",
	1702: "Gemini Membrane",
	1704: "Drill Rocks",
	1725: "Jewel Rocks",
	1726: "Magma Rocks",
	1705: "Wily Block",
	1708: "Dark 1 Brick",
	1709: "Gravity Block",
	1706: "Wily 3 Platform",
	1697: "Wily Panel",
	1710: "Toad Bars",
	1711: "Napalm Tree",
	1712: "Napalm Tree Stump",
	1713: "Knight Light Banner",
	1714: "Knight Banner",
	1715: "Tomahawk Cactus",
	1716: "Tomahawk Sign",
	1700: "Level Plate",
	1699: "Bubble Waterfall",
	1703: "Toad Waterfall",
	1707: "Napalm Waterfall",
	1690: "Elec Block",
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
