extends Control

@onready var name_box = $Panel/Label
@onready var text_box = $Panel/RichTextLabel
@onready var image_box = $Panel/TextureRect
@onready var type_sound = $Panel/AudioStreamPlayer

var typing_speed = 0.05
var dialogue_font = load("res://Qilka-Bold copy.otf")

func show_dialogue(person, words, picture):
	name_box.text = person
	image_box.texture = picture
	image_box.scale = Vector2(0.33, 0.33)

	text_box.add_theme_font_override("normal_font", dialogue_font)

	await type_text(words)

func type_text(words):
	text_box.text = ""

	for letter in words:
		text_box.text += letter
		await get_tree().create_timer(typing_speed).timeout

func _ready():
	await show_dialogue(
		"Boy",
		"Everyone says the highest hill can't be climbed. You decide to prove them wrong. Press Enter to continue.",
		load("res://assets/boy.png")
	)

	# Wait for Enter after the text is finished
	await wait_for_enter()

	# Load your Main scene
	get_tree().change_scene_to_file("res://scenes/Map.tscn")

func wait_for_enter():
	while true:
		await get_tree().process_frame
		if Input.is_action_just_pressed("ui_accept"):
			return
