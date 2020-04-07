# VersionZeroWarningDialog
# Written by: First

extends AcceptDialog

#class_name optional

"""
	Automatically popups or queue free at the start.
	Popups when the version of the project is zero.
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

#-------------------------------------------------
#      Properties
#-------------------------------------------------

#-------------------------------------------------
#      Notifications
#-------------------------------------------------

func _ready() -> void:
	if not is_version_zero():
		queue_free()
		return
	if self.is_visible():
		return
	
	#Popup a warning
	call_deferred("popup_centered")

#-------------------------------------------------
#      Virtual Methods
#-------------------------------------------------

#-------------------------------------------------
#      Override Methods
#-------------------------------------------------

#-------------------------------------------------
#      Public Methods
#-------------------------------------------------

func is_version_zero() -> bool:
	return (ProjectSettings.get_setting("application/config/version") as String).begins_with("0")

func _on_VersionZeroWarningDialog_popup_hide() -> void:
	queue_free()

#-------------------------------------------------
#      Connections
#-------------------------------------------------

#-------------------------------------------------
#      Private Methods
#-------------------------------------------------

#-------------------------------------------------
#      Setters & Getters
#-------------------------------------------------

