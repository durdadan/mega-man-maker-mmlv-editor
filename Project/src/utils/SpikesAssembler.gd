# Script_Name_Here
# Written by: 

class_name SpikesAssembler

"""
	Utility helper responsible for assimbling single spike sprites into a tile set.
"""

#-------------------------------------------------
#      Classes
#-------------------------------------------------

class SpikesData extends Reference:
	
	var regex: RegEx = RegEx.new()
	var image_data: Array = []
	
	func _init(directory_name: String) -> void:
		regex.compile("^%s_\\d+\\.png" % directory_name)
	
	func matches(directory_path: String, file_name: String) -> int:
		if regex.search(file_name) != null:
			var png_file: File = File.new()
			var result: int = png_file.open(FILE_PATH_MASK % [ directory_path, file_name ], File.READ)
			if result == OK:
				var image: Image = Image.new()
				result = image.load_png_from_buffer(png_file.get_buffer(png_file.get_len()))
				if result == OK:
					var file_number: int = int(file_name.right(file_name.find_last('_')))
					image.set_meta(SPIKES_FILE_NAME_MUMBER_META, file_number)
					image_data.push_back(image)
				else:
					printerr("Unable to open an image %s, error %d" % [ png_file.get_path_absolute(), result ])
			else:
				printerr("Unable to load an image %s, error %d" % [ png_file.get_path_absolute(), result ])
			png_file.close()
			return int(result == OK)
		return 0
	
	static func _image_sorter(a: Image, b: Image) -> bool:
		return a.get_meta(SPIKES_FILE_NAME_MUMBER_META) < b.get_meta(SPIKES_FILE_NAME_MUMBER_META)

#-------------------------------------------------
#      Signals
#-------------------------------------------------

#-------------------------------------------------
#      Constants
#-------------------------------------------------

const SPIKES_FILE_NAME_MUMBER_META: String = "_spikes_file_name_number_meta"
const SPIKES_DATA_META: String = "_spikes_data_meta"
const OUTPUT_ROOT_DIR_POSTFIX: String = "_Output"
const FILE_PATH_MASK: String = "%s/%s"
const OUTPUT_PNG_PATH_MASK: String = FILE_PATH_MASK + ".png"
const TILE_SIZE: Vector2 = 16.0 * Vector2.ONE
const CANVAS_SIZE: Vector2 = 3.0 * TILE_SIZE

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

static func assembly(spikes_directory_path: String) -> void:
	var root_dir_path: String = spikes_directory_path.get_base_dir()
	_dig_into(root_dir_path, spikes_directory_path.get_file(), root_dir_path, OUTPUT_ROOT_DIR_POSTFIX)

#-------------------------------------------------
#      Connections
#-------------------------------------------------

#-------------------------------------------------
#      Private Methods
#-------------------------------------------------

static func _dig_into(in_root_path: String, tail_dir_name: String,
		out_root_path: String, out_tail_dir_postfix: String = "") -> void:
	# Step 1: create output directory and proceed there
	var output: Directory = Directory.new()
	var output_dir_name: String = (tail_dir_name + out_tail_dir_postfix) \
		if !out_tail_dir_postfix.empty() else tail_dir_name
	var result: int = \
		output.open(out_root_path) | output.make_dir(output_dir_name) | output.change_dir(output_dir_name)
	if result != OK and result != ERR_ALREADY_EXISTS:
		printerr("Error creating output directory, error ", result)
		return
	var directory_path: String = FILE_PATH_MASK % [ in_root_path, tail_dir_name ]
	var input: Directory = Directory.new()
	result = input.open(directory_path) | input.list_dir_begin(true)
	if result != OK:
		printerr("Error initializing list iterator of a directory %s, error %d" % [ directory_path, result ])
		return
	var file_load_result: int = 0
	var file_name: String = input.get_next()
	while !file_name.empty():
		if input.current_is_dir():
			_dig_into(input.get_current_dir(), file_name, output.get_current_dir())
		else:
			file_load_result += _check_should_load_file(directory_path, file_name, input)
		file_name = input.get_next()
	if file_load_result:
		_create_tilesets(input.get_meta(SPIKES_DATA_META), output)

static func _check_should_load_file(directory_path: String, file_name: String, input: Directory) -> int:
	if !input.has_meta(SPIKES_DATA_META):
		input.set_meta(SPIKES_DATA_META, SpikesData.new(directory_path.get_file()))
	return input.get_meta(SPIKES_DATA_META).matches(directory_path, file_name)

static func _create_tilesets(spikes_data: SpikesData, output: Directory) -> void:
	var image_data: Array = spikes_data.image_data
	var sample: Image = image_data[0]
	var aspect: float = (sample.get_size() / TILE_SIZE).aspect()
	if !is_zero_approx(fmod(aspect, 1.0)):
		printerr(("Incorrect image size %s; expected %s, actual %s. " + \
			"Consider exporting sprites with a padding included.") % \
				[ output.get_current_dir(), sample.get_size().snapped(TILE_SIZE), sample.get_size() ])
		return
	if image_data.size() > 10:
		image_data.sort_custom(spikes_data, "_image_sorter")
	var result: int = OK
	var number_of_slices: int = int(aspect)
	var estimated_generated_tilesets: int = image_data.size() if number_of_slices > 1 else number_of_slices
	var is_multiple_sets: bool = estimated_generated_tilesets > 1
	var current_dir: String = output.get_current_dir()
	var base_file_name: String = current_dir.get_file()
	if !is_multiple_sets:
		result = output.change_dir("..") | output.remove(base_file_name)
		if result != OK:
			printerr("Unable to remove directory %s, error %d" % [ base_file_name, result ])
		else:
			current_dir = output.get_current_dir()
	for i in estimated_generated_tilesets:
		var png_path: String = OUTPUT_PNG_PATH_MASK % [ current_dir,
			("%s_%d" % [ base_file_name, i ]) if is_multiple_sets else base_file_name]
		var output_image: Image = Image.new()
		output_image.create(int(CANVAS_SIZE.x), int(CANVAS_SIZE.y), sample.has_mipmaps(), sample.get_format())
		output_image.fill(Color.transparent)
		for j in 5:
			var dst: Vector2 = float(j < 4) * TILE_SIZE * (Vector2.ONE + \
				(2.0 * (j % 2) - 1.0) * Vector2(float(j >= 2), float(j < 2)))
			if is_multiple_sets:
				output_image.blit_rect(image_data[i], Rect2(j * Vector2.RIGHT * TILE_SIZE, TILE_SIZE), dst)
			else:
				output_image.blit_rect(image_data[j], Rect2(Vector2.ZERO, TILE_SIZE), dst)
		result = output_image.save_png(png_path)
		if result != OK:
			printerr("Unable to save png file %s, error %d" % [ png_path, result ])

#-------------------------------------------------
#      Setters & Getters
#-------------------------------------------------
