extends Area2D

@onready var timer = $Timer

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		body.die()
		print("You Died")
		timer.start()


func _on_timer_timeout():
	get_tree().reload_current_scene()
