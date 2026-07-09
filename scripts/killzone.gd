extends Area2D

@onready var timer = $Timer


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		body.get_node("CollisionShape2D").queue_free()
		print("You Died")
		Engine.time_scale = 0.5
		timer.start()
	
	
func _on_timer_timeout():
	Engine.time_scale = 1.0
	get_tree().reload_current_scene()
	
