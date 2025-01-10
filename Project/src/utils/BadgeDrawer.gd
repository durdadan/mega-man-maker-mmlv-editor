# Script_Name_Here
# Written by: 

extends Reference

class_name BadgeDrawer

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

const BADGE_META: String = "_badge_meta"
const BADGE_ALPHA: float = 1.0
const BADGE_MODULATE_COLOR: Color = Color(1.0, 1.0, 1.0, clamp(BADGE_ALPHA, 0.0, 1.0))
const BADGE_ANIMATED_TEXTURE: Texture = preload(
	"res://assets/images/editor_ui/badge_animated.png"
)

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

static func check_should_display_anim_badge(button: BaseButton, content_texture: Texture) -> void:
	if content_texture is AnimatedTexture and !button.is_hovered():
		if !_has_flag(Texture.FLAG_REPEAT, content_texture.flags):
			VisualServer.canvas_item_add_texture_rect(button.get_canvas_item(),
				 Rect2(_get_badge_position(button), BADGE_ANIMATED_TEXTURE.get_size()),
					BADGE_ANIMATED_TEXTURE.get_rid(), false, BADGE_MODULATE_COLOR)
		elif !button.has_meta(BADGE_META):
			var badge_sprite: Sprite = Sprite.new()
			badge_sprite.centered = false
			badge_sprite.modulate = BADGE_MODULATE_COLOR
			badge_sprite.position = _get_badge_position(button)
			badge_sprite.texture = BADGE_ANIMATED_TEXTURE
			button.connect("mouse_entered", badge_sprite, "hide")
			button.connect("mouse_exited", badge_sprite, "show")
			button.add_child(badge_sprite)
			button.set_meta(BADGE_META, badge_sprite)

#-------------------------------------------------
#      Connections
#-------------------------------------------------

#-------------------------------------------------
#      Private Methods
#-------------------------------------------------

static func _get_badge_position(button: BaseButton) -> Vector2:
	return button.rect_size - BADGE_ANIMATED_TEXTURE.get_size()

static func _has_flag(flag: int, flags: int) -> bool:
	return flag & flags != 0

#-------------------------------------------------
#      Setters & Getters
#-------------------------------------------------
