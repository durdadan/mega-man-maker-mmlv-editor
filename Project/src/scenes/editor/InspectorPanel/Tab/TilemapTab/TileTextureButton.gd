# TileTextureButton
# Written by: First

extends TextureButton

class_name TileTextureButton

"""
	Enter desc here.
"""

#-------------------------------------------------
#      Classes
#-------------------------------------------------

#-------------------------------------------------
#      Signals
#-------------------------------------------------

signal pressed_id(tile_id, tile_texture)
signal mouse_entered_btn(texture, tileset_name, tile_id)
signal mouse_exited_btn(texture)

#-------------------------------------------------
#      Constants
#-------------------------------------------------

#-------------------------------------------------
#      Properties
#-------------------------------------------------

export var tile_id : int
var tileset_name : String
var texture_region: TextureRegion

#-------------------------------------------------
#      Notifications
#-------------------------------------------------

func _ready() -> void:
	connect("mouse_entered", self, "_on_mouse_entered")
	connect("mouse_exited", self, "_on_mouse_exited")

func _pressed() -> void:
	emit_signal("pressed_id", tile_id, get_normal_texture())

#-------------------------------------------------
#      Virtual Methods
#-------------------------------------------------

func _draw() -> void:
	if texture_region:
		VisualServer.canvas_item_add_texture_rect_region(get_canvas_item(), Rect2(Vector2.ZERO, rect_size),
			texture_region.texture.get_rid(), texture_region.region)

#-------------------------------------------------
#      Override Methods
#-------------------------------------------------

#-------------------------------------------------
#      Public Methods
#-------------------------------------------------

#-------------------------------------------------
#      Connections
#-------------------------------------------------

func _on_mouse_entered():
	emit_signal("mouse_entered_btn", get_normal_texture(), tileset_name, tile_id)

func _on_mouse_exited():
	emit_signal("mouse_exited_btn", get_normal_texture())

#-------------------------------------------------
#      Private Methods
#-------------------------------------------------

#-------------------------------------------------
#      Setters & Getters
#-------------------------------------------------

func get_normal_texture() -> Texture:
	return texture_region.texture if texture_region else .get_normal_texture()
