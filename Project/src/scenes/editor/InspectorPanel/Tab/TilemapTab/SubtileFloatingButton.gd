# TileTextureButton
# Written by: First

extends Button

#class_name optional

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

const CONTENT_PADDING: float = 6.0
const OVERBRIGHT_AMOUNT: float = 0.4
const MODULATE_COLOR_NORMAL: Color = Color.white
const MODULATE_COLOR_HOVER: Color = MODULATE_COLOR_NORMAL * (1.0 + OVERBRIGHT_AMOUNT)

#-------------------------------------------------
#      Properties
#-------------------------------------------------

var texture_region: TextureRegion setget set_texture_region
var _modulate_color: Color = Color.white

#-------------------------------------------------
#      Notifications
#-------------------------------------------------

#-------------------------------------------------
#      Virtual Methods
#-------------------------------------------------

func _init() -> void:
	connect("mouse_entered", self, "set", [ "_modulate_color", MODULATE_COLOR_HOVER ])
	connect("mouse_exited", self, "set", [ "_modulate_color", MODULATE_COLOR_NORMAL ])

func _draw() -> void:
	if texture_region and !icon:
		VisualServer.canvas_item_add_texture_rect_region(
			get_canvas_item(), Rect2(Vector2.ZERO, rect_size).grow(-CONTENT_PADDING),
				texture_region.texture.get_rid(), texture_region.region, _modulate_color)

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

func set_texture_region(val: TextureRegion) -> void:
	texture_region = val
	icon = null
	update()
