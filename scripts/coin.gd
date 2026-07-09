extends Area2D

@onready var audio_stream_player_2d: AudioStreamPlayer2D = $AudioStreamPlayer2D
@onready var collision_shape_2d: CollisionShape2D = $CollisionShape2D

signal collected

func _ready() -> void:
	body_entered.connect(_on_body_entered)


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		collect()


func collect() -> void:
	collected.emit()

	# Add coin to counter
	var ui = get_tree().get_first_node_in_group("ui")
	if ui:
		ui.add_coin()

	# Prevent double-collection and hide the coin immediately
	collision_shape_2d.set_deferred("disabled", true)
	hide()

	audio_stream_player_2d.play()
	await audio_stream_player_2d.finished

	queue_free()
