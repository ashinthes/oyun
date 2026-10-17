extends CharacterBody2D

@export var speed: float = 200.0

func _physics_process(delta: float) -> void:
 var direction := Input.get_vector("move_left", "move_right", "move_up", "move_dıwn")
	
 if direction != Vector2.ZERO:
  velocity = direction * speed
 else:
  velocity = velocity.move_toward(Vector2.ZERO, speed)
	
 move_and_slide()
