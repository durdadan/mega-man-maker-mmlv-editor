# Editor
# Written by: First

extends Node

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

#-------------------------------------------------
#      Properties
#-------------------------------------------------

onready var level = $Level
onready var main_camera = $MainCamera
onready var object_selector = $ObjectSelector
onready var object_deleter = $ObjectDeleter
onready var object_adder = $ObjectAdder
onready var tile_painter = $TilePainter

onready var control: Control = $CanvasLayer/Control
onready var menu_bar = $CanvasLayer/Control/MenuPanel
onready var file_access_ctrl = $CanvasLayer/Control/FileAccessCtrl
onready var inspector_panel = $CanvasLayer/Control/InspectorPanel
onready var update_checker = $UpdateChecker

onready var popups = $CanvasLayer/Control/Popups
onready var readme_accept_dialog = $CanvasLayer/Control/Popups/ReadmeAcceptDialog
onready var about_popup_dialog = $CanvasLayer/Control/Popups/AboutPopupDialog
onready var exit_unsaved_dialog = $CanvasLayer/Control/Popups/ExitUnsavedDialog
onready var reload_level_dialog = $CanvasLayer/Control/Popups/ReloadLevelDialog
onready var editor_config_dialog = $CanvasLayer/Control/Popups/EditorConfigPopupDialog
onready var hint_list_popup_dialog = $CanvasLayer/Control/Popups/HelpListPopupDialog
onready var up_to_date_popup_dialog = $CanvasLayer/Control/Popups/UpToDatePopupDialog
onready var update_available_popup_dialog = $CanvasLayer/Control/Popups/UpdateAvailablePopupDialog
onready var toolbar_lock_btn: BaseButton = $CanvasLayer/Control/ToolBar.lock_btn

#-------------------------------------------------
#      Notifications
#-------------------------------------------------

func _ready() -> void:
	_observe_popup_events()
	_connect_ExitHandler()
	_update_window_title_by_level_path("")
	inspector_panel.load_level_config()
	_check_for_update(false)

#-------------------------------------------------
#      Virtual Methods
#-------------------------------------------------

#-------------------------------------------------
#      Override Methods
#-------------------------------------------------

#-------------------------------------------------
#      Public Methods
#-------------------------------------------------

func can_handle_scroll() -> bool:
	return !EditorConfig.locked_keyboard and not (
		control.get_focus_owner() is LineEdit or control.get_focus_owner() is PopupMenu)

func scroll_to_player_pos():
	var pos = level.get_player_position()
	
	if pos != Vector2.ZERO:
		main_camera.global_position = pos
		main_camera.reset_zoom()

func new_level():
	_update_window_title_by_level_path("")
	file_access_ctrl.clear_current_level_path()
	inspector_panel.load_level_config()
	UnsaveChanges.set_activated(false)
	LevelUndo.get_undo_redo().clear_history()

#-------------------------------------------------
#      Connections
#-------------------------------------------------

func _on_MenuPanel_new_file() -> void:
	#Check if there are unsaved changes
	if UnsaveChanges.is_activated():
		exit_unsaved_dialog.pending_request = exit_unsaved_dialog.PendingRequest.NEW_FILE
		exit_unsaved_dialog.popup_centered()
		return
	level.clear_level()
func _on_MenuPanel_opening_file() -> void:
	#Check if there are unsaved changes
	if UnsaveChanges.is_activated():
		exit_unsaved_dialog.pending_request = exit_unsaved_dialog.PendingRequest.OPEN
		exit_unsaved_dialog.popup_centered()
		return
	file_access_ctrl.open_file()
func _on_MenuPanel_opening_containing_folder() -> void:
	file_access_ctrl.open_containing_folder()
func _on_MenuPanel_opening_mega_maker_folder() -> void:
	file_access_ctrl.open_mega_maker_folder()
func _on_MenuPanel_saving_file() -> void:
	file_access_ctrl.save_file()
func _on_MenuPanel_saving_file_as() -> void:
	file_access_ctrl.save_file_as()
func _on_MenuPanel_opening_config() -> void:
	editor_config_dialog.popup_centered()
func _on_MenuPanel_exiting() -> void:
	#Check if there are unsaved changes
	if UnsaveChanges.is_activated():
		exit_unsaved_dialog.pending_request = exit_unsaved_dialog.PendingRequest.EXIT_APP
		exit_unsaved_dialog.popup_centered()
		return
	get_tree().quit()
func _on_MenuPanel_clearing_recent_files() -> void:
	file_access_ctrl.recent_file_manager.clear()

func _on_MenuPanel_undo() -> void:
	LevelUndo.get_undo_redo().undo()
func _on_MenuPanel_redo() -> void:
	LevelUndo.get_undo_redo().redo()
func _on_MenuPanel_duplicate() -> void:
	CopyPaste.duplicate_selection()
func _on_MenuPanel_delete() -> void:
	object_deleter.delete()

func _on_MenuPanel_toggle_screen_grid() -> void:
	level.toggle_screen_grid()
func _on_MenuPanel_toggle_tile_grid() -> void:
	level.toggle_tile_grid()
func _on_MenuPanel_toggle_tiles() -> void:
	level.toggle_game_tile()
func _on_MenuPanel_toggle_backgrounds() -> void:
	level.toggle_game_bg_tile()
func _on_MenuPanel_toggle_objects() -> void:
	level.toggle_game_objects()
func _on_MenuPanel_toggle_active_screens() -> void:
	level.toggle_game_active_screens()
func _on_MenuPanel_toggle_ladders() -> void:
	level.toggle_game_ladder_tile()
func _on_MenuPanel_toggle_spikes() -> void:
	level.toggle_game_spike_tile()
func _on_MenuPanel_zoom_in() -> void:
	main_camera.zoom_in()
func _on_MenuPanel_zoom_out() -> void:
	main_camera.zoom_out()
func _on_MenuPanel_normal_zoom() -> void:
	main_camera.reset_zoom()

func _on_MenuPanel_view_help_list() -> void:
	hint_list_popup_dialog.popup_centered()
func _on_MenuPanel_readme() -> void:
	readme_accept_dialog.popup_centered()
func _on_MenuPanel_check_for_updates() -> void:
	update_checker.request()
func _on_MenuPanel_about() -> void:
	about_popup_dialog.popup_centered()

# ---

func _on_FileAccessCtrl_opened_file(dir, path : String) -> void:
	var load_result : int = level.load_level(dir, path)
	
	match load_result:
		OK:
			$Scroll2PlayerPosDelayTimer.start()
			EditorLogBox.add_message("Loaded " + path)
			_update_window_title_by_level_path(path)
			file_access_ctrl.update_current_level_path(dir, path)
			inspector_panel.load_level_config()
		ERR_FILE_UNRECOGNIZED:
			EditorLogBox.add_message("The file you're trying to load is not a .mmlv file. Please select a file with an extension of .mmlv.", true)
		_:
			EditorLogBox.add_message("Unknown error. Returned err code: %s" % load_result, true)
	
	if load_result != OK:
		EditorLogBox.add_message("Could not open file at path %s" % path, true)
		EditorLogBox.add_message("Could not open file at dir %s" % dir, true)

func _on_FileAccessCtrl_saved_file(dir, path) -> void:
	level.save_level(dir, path)
	_update_window_title_by_level_path(path)
	var newSaveStyle = true
	if !newSaveStyle:
		EditorLogBox.add_message("Level saved at " + path)
	else :
		var last_slash = path.find_last("/") + 1
		var level_name_string = path.substr(last_slash, path.length())
		EditorLogBox.add_message(level_name_string + " Saved")
	
	UnsaveChanges.set_activated(false)

#New level
func _on_Level_cleared_level() -> void:
	new_level()

func _on_FileDropNotifier_files_dropped(files : PoolStringArray, _screen : int) -> void:
	#Check if there are unsaved changes
	if UnsaveChanges.is_activated():
		exit_unsaved_dialog.pending_request = exit_unsaved_dialog.PendingRequest.OPEN_FROM_PATH
		exit_unsaved_dialog.popup_centered()
		exit_unsaved_dialog.pool_opening_path = files[0]
		return
	file_access_ctrl.open_file_from_path(files[0])

func _on_MenuPanel_opening_recent_file(id) -> void:
	#Check if there are unsaved changes
	if UnsaveChanges.is_activated():
		exit_unsaved_dialog.pending_request = exit_unsaved_dialog.PendingRequest.OPEN_FROM_PATH
		exit_unsaved_dialog.popup_centered()
		exit_unsaved_dialog.pool_opening_path = file_access_ctrl.recent_file_manager.recent_file_paths[id]
		return
	file_access_ctrl.open_file_from_path(file_access_ctrl.recent_file_manager.recent_file_paths[id])

func _on_MenuPanel_file_menu_about_to_show() -> void:
	menu_bar.file_menu.get_popup().set_item_disabled(
		MenuBar.ID_MENU_FILE_OPEN_CONTAINING_FOLDER, file_access_ctrl.current_level_path.empty()
	)
	menu_bar.update_recent_files(file_access_ctrl.recent_file_manager.get_recent_file_paths())

func _on_MenuPanel_edit_menu_about_to_show() -> void:
	menu_bar.edit_menu.get_popup().set_item_disabled(
		MenuBar.ID_MENU_EDIT_UNDO, not LevelUndo.get_undo_redo().has_undo()
	)
	menu_bar.edit_menu.get_popup().set_item_disabled(
		MenuBar.ID_MENU_EDIT_REDO, not LevelUndo.get_undo_redo().has_redo()
	)
	menu_bar.edit_menu.get_popup().set_item_disabled(
		MenuBar.ID_MENU_EDIT_DUPLICATE, SelectedObjects.selected_objects.empty()
	)
	menu_bar.edit_menu.get_popup().set_item_disabled(
		MenuBar.ID_MENU_EDIT_DELETE, SelectedObjects.selected_objects.empty()
	)

func _on_MenuPanel_view_menu_about_to_show() -> void:
	menu_bar.view_menu.get_popup().set_item_checked(
		MenuBar.ID_MENU_VIEW_SCREEN_GRID, level.game_grid.is_visible()
	)
	menu_bar.view_menu.get_popup().set_item_checked(
		MenuBar.ID_MENU_VIEW_TILE_GRID, level.game_tile_grid.is_visible()
	)
	menu_bar.view_menu.get_popup().set_item_checked(
		MenuBar.ID_MENU_VIEW_TILES, level.game_tilemap.is_visible()
	)
	menu_bar.view_menu.get_popup().set_item_checked(
		MenuBar.ID_MENU_VIEW_BACKGROUNDS, level.game_bg_tile.is_visible()
	)
	menu_bar.view_menu.get_popup().set_item_checked(
		MenuBar.ID_MENU_VIEW_OBJECTS, level.game_objects.is_visible()
	)
	menu_bar.view_menu.get_popup().set_item_checked(
		MenuBar.ID_MENU_VIEW_ACTIVE_SCREENS, level.game_active_screens.is_visible()
	)
	menu_bar.view_menu.get_popup().set_item_checked(
		MenuBar.ID_MENU_VIEW_LADDERS, level.game_ladder_tile.is_visible()
	)
	menu_bar.view_menu.get_popup().set_item_checked(
		MenuBar.ID_MENU_VIEW_SPIKES, level.game_spike_tile.is_visible()
	)

func _on_Scroll2PlayerPosDelayTimer_timeout() -> void:
	scroll_to_player_pos()

func _on_EditAreaRect_gui_input(event: InputEvent) -> void:
	_control_viewport_by_gui_input(event)
	_control_object_selection_by_gui_input(event)
	_control_tilemap_by_gui_input(event)
	

func _on_ToolBar_add_object_pressed() -> void:
	object_adder.add_object()

func _on_ToolBar_pressed() -> void:
	match EditMode.mode:
		EditMode.Mode.OBJECT:
			tile_painter.set_follow_mouse_pointer(false)
			tile_painter.hide()
		EditMode.Mode.TILE:
			tile_painter.tilemap = $Level/GameTileMapDrawer
			tile_painter.set_follow_mouse_pointer(true)
			tile_painter.show()
		EditMode.Mode.BACKGROUND:
			tile_painter.tilemap = $Level/GameBgTileDrawer
			tile_painter.set_follow_mouse_pointer(true)
			tile_painter.show()
		EditMode.Mode.ACTIVE_SCREEN:
			tile_painter.tilemap = $Level/GameActiveScreenTileDrawer
			tile_painter.set_follow_mouse_pointer(true)
			tile_painter.show()
		EditMode.Mode.LADDER:
			tile_painter.tilemap = $Level/GameLadderTileDrawer
			tile_painter.set_follow_mouse_pointer(true)
			tile_painter.show()
		EditMode.Mode.SPIKE:
			tile_painter.tilemap = $Level/GameSpikeTileDrawer
			tile_painter.set_follow_mouse_pointer(true)
			tile_painter.show()

func _on_TilemapTab_tile_selected(tile_id) -> void:
	tile_painter.set_current_tile_id(tile_id)

func _on_BackgroundTab_bg_selected(id) -> void:
	tile_painter.set_current_tile_id(id)
	
func _on_LadderTab_ladder_selected(ladder_id) -> void:
	tile_painter.set_current_tile_id(ladder_id)
	
func _on_SpikeTab_spike_selected(spike_id) -> void:
	tile_painter.set_current_tile_id(spike_id)
	
func _on_TilePainter_changed_tile_id(tilemap_tile_id) -> void:
	_make_tilemap_tab_current_tile(tilemap_tile_id)

func _on_ViewportEventKeyScroller_moving(velocity) -> void:
	main_camera.position += velocity * main_camera.zoom.x

func _on_ExitUnsavedDialog_confirmed_save() -> void:
	if file_access_ctrl.is_new_file():
		file_access_ctrl.save_file_as()
		return
	
	file_access_ctrl.save_file()
	_do_unsaved_changes_pending_request()

func _on_ExitUnsavedDialog_custom_action(action: String) -> void:
	if action == ExitUnsavedDialog.ACTION_NOSAVE:
		_do_unsaved_changes_pending_request()

func _on_FileAccessCtrl_file_update_detected() -> void:
	reload_level_dialog.set_dialog_text_file_path(file_access_ctrl.current_level_path)
	reload_level_dialog.set_unsaved_changes(UnsaveChanges.is_activated())
	reload_level_dialog.popup_centered()

func _on_ReloadLevelDialog_confirmed() -> void:
	file_access_ctrl.reload()

func _on_UpdateChecker_up_to_date() -> void:
	up_to_date_popup_dialog.popup_centered()

func _on_UpdateChecker_update_available() -> void:
	update_available_popup_dialog.set_version(
		update_checker.release_content.get_version()
	)
	update_available_popup_dialog.set_author_and_time(
		update_checker.release_content.get_author_name(),
		update_checker.release_content.get_publish_date_raw()
	)
	update_available_popup_dialog.set_desc(
		update_checker.release_content.get_description()
	)
	update_available_popup_dialog.set_file_size(
		update_checker.release_content.get_file_size()
	)
	update_available_popup_dialog.set_download_url(
		update_checker.release_content.get_download_url()
	)
	update_available_popup_dialog.popup_centered()

#Connect from _connect_ExitHandler()
func _on_ExitHandler_quit_requested():
	exit_unsaved_dialog.pending_request = exit_unsaved_dialog.PendingRequest.EXIT_APP
	exit_unsaved_dialog.popup_centered()

#-------------------------------------------------
#      Private Methods
#-------------------------------------------------

func _connect_ExitHandler():
	ExitHandler.connect("quit_requested", self, "_on_ExitHandler_quit_requested")

var is_scroll_mode : bool
func _control_viewport_by_gui_input(event : InputEvent):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_MIDDLE:
			is_scroll_mode = event.is_pressed()
		
		#Zoom in/out by mouse wheel
		if event.button_index == BUTTON_WHEEL_UP:
			main_camera.zoom_in_mini(event.global_position)
		if event.button_index == BUTTON_WHEEL_DOWN:
			main_camera.zoom_out_mini(event.global_position)
	if event is InputEventKey:
		if event.scancode == KEY_SPACE:
			is_scroll_mode = event.is_pressed()
	
	if is_scroll_mode:
		if event is InputEventMouseMotion:
			main_camera.position -= event.relative * main_camera.zoom

func _control_object_selection_by_gui_input(event : InputEvent):
	#Only work if current edit mode is OBJECTS
	if EditMode.mode == EditMode.Mode.OBJECT:
		object_selector.process_input(event)

func _control_tilemap_by_gui_input(event : InputEvent):
	if (
		EditMode.mode == EditMode.Mode.TILE or
		EditMode.mode == EditMode.Mode.BACKGROUND or
		EditMode.mode == EditMode.Mode.ACTIVE_SCREEN or
		EditMode.mode == EditMode.Mode.LADDER or
		EditMode.mode == EditMode.Mode.SPIKE
	):
		tile_painter.process_input(event)

func _make_tilemap_tab_current_tile(tilemap_tile_id):
	match EditMode.mode:
		EditMode.Mode.TILE:
			inspector_panel.tilemap_tab.select_tile(
				tilemap_tile_id / GameTileSetData.SUBTILE_COUNT,
				tilemap_tile_id % GameTileSetData.SUBTILE_COUNT
			)
		EditMode.Mode.SPIKE:
			inspector_panel.spike_tab.select_spike(
				tilemap_tile_id / GameSpikeData.SPIKE_TILE_COUNT,
				tilemap_tile_id % GameSpikeData.SPIKE_TILE_COUNT
			)

func _update_window_title_by_level_path(path : String):
	WindowTitleUpdater.current_level_file_path = path

func _do_unsaved_changes_pending_request():
	match exit_unsaved_dialog.pending_request:
		exit_unsaved_dialog.PendingRequest.NEW_FILE:
			level.clear_level()
		exit_unsaved_dialog.PendingRequest.OPEN:
			file_access_ctrl.open_file()
		exit_unsaved_dialog.PendingRequest.OPEN_FROM_PATH:
			file_access_ctrl.open_file_from_path(
				exit_unsaved_dialog.pool_opening_path
			)
		exit_unsaved_dialog.PendingRequest.EXIT_APP:
			get_tree().quit()

func _check_for_update(notify : bool = true):
	if not EditorConfig.auto_check_update:
		return
	if update_checker.is_auto_check_on_cooldown():
		return
	if OS.is_debug_build():
		return
	
	update_checker.request(notify)

func _observe_popup_events() -> void:
	var _popups: Array = popups.get_children() + \
		[ file_access_ctrl.open_file_dialog, file_access_ctrl.save_file_dialog ]
	for popup in _popups:
		popup = popup as Popup
		popup.connect("about_to_show", self, "_set_lock_view_scroll", [ true ])
		popup.connect("popup_hide", self, "_set_lock_view_scroll", [ false ])

func _set_lock_view_scroll(result: bool) -> void:
	EditorConfig.locked_keyboard = result or toolbar_lock_btn.pressed

#-------------------------------------------------
#      Setters & Getters
#-------------------------------------------------
