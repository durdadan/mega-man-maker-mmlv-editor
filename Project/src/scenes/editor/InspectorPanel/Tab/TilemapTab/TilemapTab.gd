# TilemapTab
# Written by: First

extends MainInspectorTab

#class_name optional

"""
	Enter desc here.
"""

#-------------------------------------------------
#      Classes
#-------------------------------------------------

class TilesetButtonMap:
	extends Reference
	
	# Mapped nodes
	# {
	#     game_id : {
	#         title_label : Label,
	#         buttons : [TileTextureButton, TileTextureButton, TileTextureButton, ...]
	#     }, ...
	# }
	var buttons_map : Dictionary
	
	func map_button(button, game_id):
		game_id = str(game_id) # Casting
		
		if not buttons_map.has(game_id):
			buttons_map[game_id] = {}
		if not buttons_map[game_id].has("buttons"):
			buttons_map[game_id]["buttons"] = []
		
		(buttons_map[game_id]["buttons"] as Array).append(button)
	
	func map_title_label(label, game_id):
		game_id = str(game_id) # Casting
		
		if not buttons_map.has(game_id):
			buttons_map[game_id] = {}
		if not buttons_map[game_id].has("title_label"):
			buttons_map[game_id]["title_label"] = []
		
		buttons_map[game_id]["title_label"] = label
	
	# Makes node visible/invisible by an expression
	func filter(expression : String):
		for game_id in buttons_map.keys():
			var title_label = buttons_map[game_id]["title_label"]
			var has_one_visible : bool
			
			for btn in buttons_map[game_id]["buttons"]:
				btn = btn as TileTextureButton
				
				if expression.empty() or btn.tileset_name.matchn("*" + expression + "*"):
					btn.show()
					has_one_visible = true
				else:
					btn.hide()
			
			if has_one_visible:
				title_label.show()
			else:
				title_label.hide()

#-------------------------------------------------
#      Signals
#-------------------------------------------------

signal tile_selected(tile_id)

#-------------------------------------------------
#      Constants
#-------------------------------------------------

const BUTTON_PRESS_EFFECT = preload("res://src/utils/ButtonFx/PressFx/ButtonPressFx.tscn")
const GRID_C_AUTO_RESIZER = preload("res://src/utils/GridContainerAutoResizer/GridContainerAutoResizer.tscn")
const GRID_C_NAME_PREFIX = "GridGameID"
const IMG_TEXTURE_BEGIN_PATH = "res://assets/images/tilesets/"
const BUTTON_SIZE = Vector2(32, 32)
const SUBTILE_REGION: Rect2 = Rect2(Vector2(141, 71), 16.0 * Vector2.ONE)
const MARGIN_BOTTOM_BOX_MIN_SIZE = Vector2(0, 96)

#-------------------------------------------------
#      Properties
#-------------------------------------------------

onready var preview_texture_rect = $PreviewTextureRect
onready var preview_tex_anim = $PreviewTextureRect/ShowHideAnim
onready var preview_tex_name_panel = $PreviewTextureRect/NameVBox
onready var preview_tex_name_label = $PreviewTextureRect/NameVBox/TilesetNameLabel
onready var preview_tex_id_label = $PreviewTextureRect/NameVBox/TilesetIDLabel
onready var subtile_button = $SubtileButton
onready var subtile_select_popup = $SubtileSelectPopup
onready var search_lineedit = $VBox/SearchLineEdit
onready var search_lineedit_icon = $VBox/SearchLineEdit/Icon

var current_selected_tile_id : int
var current_subtile_id : int

var tileset_btn_map : TilesetButtonMap = TilesetButtonMap.new()

#-------------------------------------------------
#      Notifications
#-------------------------------------------------

func _ready() -> void:
	_generate_ui()

#-------------------------------------------------
#      Virtual Methods
#-------------------------------------------------

#-------------------------------------------------
#      Override Methods
#-------------------------------------------------

#-------------------------------------------------
#      Public Methods
#-------------------------------------------------

func select_tile(tile_id : int, subtile_id = 0):
	current_selected_tile_id = tile_id * GameTileSetData.SUBTILE_COUNT
	current_subtile_id = subtile_id
	emit_signal("tile_selected", current_selected_tile_id + current_subtile_id)
	
	var tiles_texture: Texture = load(IMG_TEXTURE_BEGIN_PATH.plus_file(
		GameTileSetData.TILESET_DATA[tile_id]))
	#Set subtile button texture
	subtile_button.texture_region = TextureRegion.new(tiles_texture, SUBTILE_REGION)
	#Set subtile preview
	subtile_select_popup.set_preview_texture(tiles_texture)
	subtile_select_popup.set_tileset_name(tiles_texture.resource_path.get_file().get_basename())
	subtile_select_popup.set_tileset_id(tile_id)

#-------------------------------------------------
#      Connections
#-------------------------------------------------

func _on_tile_btn_pressed_id(tile_id : int, _tile_texture : Texture):
	select_tile(tile_id) 

func _on_tile_btn_mouse_entered_btn(texture : Texture, tileset_name : String, tile_id : int):
	preview_tex_anim.play("Show")
	preview_tex_name_panel.show()
	preview_tex_name_label.text = tileset_name
	preview_tex_id_label.text = str("ID: ", tile_id)
	preview_texture_rect.texture = texture

func _on_tile_btn_mouse_exited_btn(_texture):
	preview_tex_anim.play("Hide")
	preview_tex_name_panel.hide() # this needs to be here or there is a phantom area you cannot click. 

func _on_tile_btn_gui_input(event : InputEvent):
	# Check for double click event
	if event is InputEventMouseButton:
		if event.doubleclick:
			subtile_select_popup.popup()

func _on_SubtileButton_pressed() -> void:
	subtile_select_popup.popup()

func _on_SubtileSelectPopup_subtile_selected(tile_id) -> void:
	current_subtile_id = tile_id
	emit_signal("tile_selected", current_selected_tile_id + current_subtile_id)

func _on_SearchLineEdit_text_changed(new_text: String) -> void:
	tileset_btn_map.filter(new_text)
	search_lineedit_icon.visible = new_text.empty()

#-------------------------------------------------
#      Private Methods
#-------------------------------------------------

func _generate_ui():
	_create_grid_containters()
	
	for i in GameTileSetData.TILESET_DATA.keys():
		_create_tile_button(
			GameTileSetData.TILESET_DATA.get(i),
			GameTileSetData.TILE_GAME_IDS.get(i),
			i #Tile ID
		)
	
	_add_margin_bottom_box()

func _create_tile_button(file_name : String, game_id : int, tile_id : int):
	if game_id == GameDataBuilder.UNUSED_ASSETS:
		return
	
	var grid_c = scrl_vbox.get_node(GRID_C_NAME_PREFIX + str(game_id))
	var tex_btn := TileTextureButton.new()
	tex_btn.tileset_name = file_name.get_basename()
	tex_btn.texture_region = TextureRegion.new(
		load(IMG_TEXTURE_BEGIN_PATH + file_name), SUBTILE_REGION)
	tex_btn.rect_min_size = BUTTON_SIZE
	tex_btn.hint_tooltip = str(tex_btn.tileset_name, "\nID: ", tile_id)
	tex_btn.mouse_default_cursor_shape = Control.CURSOR_POINTING_HAND
	tex_btn.connect("pressed_id", self, "_on_tile_btn_pressed_id")
	tex_btn.connect("mouse_entered_btn", self, "_on_tile_btn_mouse_entered_btn")
	tex_btn.connect("mouse_exited_btn", self, "_on_tile_btn_mouse_exited_btn")
	tex_btn.connect("gui_input", self, "_on_tile_btn_gui_input") # Use for double click event
	tex_btn.tile_id = tile_id
	grid_c.add_child(tex_btn)
	# Add button click effect.
	var button_eff = BUTTON_PRESS_EFFECT.instance()
	tex_btn.add_child(button_eff)
	
	# Map the newly created button to tileset_btn_mapper
	tileset_btn_map.map_button(tex_btn, game_id)

func _create_grid_containters():
	var game_ids : Dictionary = {}
	var sorted_game_ids : Array
	
	#Get all game ids and sort them
	for i in GameTileSetData.TILE_GAME_IDS.values():
		game_ids[i] = ""
	game_ids.erase(GameDataBuilder.UNUSED_ASSETS)
	
	sorted_game_ids = game_ids.keys()
	sorted_game_ids.sort()
	
	for id in sorted_game_ids:
		var grid_c = GridContainer.new()
		var label_game_id = Label.new()
		var grid_auto_resizer = GRID_C_AUTO_RESIZER.instance()
		
		scrl_vbox.add_child(grid_c)
		grid_c.set_name(GRID_C_NAME_PREFIX + str(id))
		
		grid_c.add_child(grid_auto_resizer)
		grid_c.mouse_filter = Control.MOUSE_FILTER_IGNORE
		grid_c.get_parent().add_child(label_game_id)
		grid_c.raise()
		label_game_id.text = GameDataBuilder.getGameName(id)
		# Map the newly created title label to tileset_btn_mapper
		tileset_btn_map.map_title_label(label_game_id, id)

func _add_margin_bottom_box():
	var ref_rect = ReferenceRect.new()
	scrl_vbox.add_child(ref_rect)
	ref_rect.rect_min_size = MARGIN_BOTTOM_BOX_MIN_SIZE

#-------------------------------------------------
#      Setters & Getters
#-------------------------------------------------
