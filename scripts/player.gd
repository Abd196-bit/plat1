extends CharacterBody2D

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var jump: AudioStreamPlayer2D = $Jump

const SPEED := 300.0
const JUMP_VELOCITY := -400.0

func _physics_process(delta: float) -> void:
	# Apply gravity
	if !is_on_floor():
		velocity += get_gravity() * delta

	# Horizontal movement
	var direction := Input.get_axis("down", "up")

	if direction != 0:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	# Jump
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		jump.play()
	else:
		# Stick to slopes only when not jumping
		if is_on_floor():
			apply_floor_snap()

	# Move the player
	move_and_slide()

	# Update animation
	update_animation(direction)


func update_animation(direction: float) -> void:
	if direction != 0:
		animated_sprite_2d.flip_h = direction < 0

	if !is_on_floor():
		animated_sprite_2d.play("jump")
	elif direction != 0:
		animated_sprite_2d.play("walking")
	else:
		animated_sprite_2d.play("idle")
