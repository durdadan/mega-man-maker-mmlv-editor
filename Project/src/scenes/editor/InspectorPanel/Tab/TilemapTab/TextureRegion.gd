# Script_Name_Here
# Written by: 

extends Reference

class_name TextureRegion

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

const EMPTY_RECT: Rect2 = Rect2()

#-------------------------------------------------
#      Properties
#-------------------------------------------------

var texture: Texture
var region: Rect2

#-------------------------------------------------
#      Notifications
#-------------------------------------------------

#-------------------------------------------------
#      Virtual Methods
#-------------------------------------------------

func _init(_texture: Texture, _region: Rect2 = EMPTY_RECT) -> void:
	texture = _texture
	region = Rect2(Vector2.ZERO, texture.get_size()) if _region.has_no_area() else _region

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
