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

const BADGE_ALPHA: float = 1.0
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
		VisualServer.canvas_item_add_texture_rect(button.get_canvas_item(),
			 Rect2(button.rect_size - BADGE_ANIMATED_TEXTURE.get_size(),
				BADGE_ANIMATED_TEXTURE.get_size()), BADGE_ANIMATED_TEXTURE.get_rid(),
					false, Color(1.0, 1.0, 1.0, clamp(BADGE_ALPHA, 0.0, 1.0)))

#-------------------------------------------------
#      Connections
#-------------------------------------------------

#-------------------------------------------------
#      Private Methods
#-------------------------------------------------

#-------------------------------------------------
#      Setters & Getters
#-------------------------------------------------
