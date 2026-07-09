extends Node2D

@onready var timer = $Timer


func _on_body_entered(PLayer: Node2D) -> void:
	print("You Died")
	timer.start()
	
	
func _on_timer_timeout():
	get_tree().reload_current_scene()
