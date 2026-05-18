extends CharacterBody2D

var direction: Vector2 = Vector2(1, 1)
var speed: int = 120

func _physics_process(_delta: float) -> void:
	direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * speed
	move_and_slide()
	animation()

func animation():
	if direction:
		$AnimatedSprite2D.flip_h = direction.x > 0
		if direction.y != 0:
			$AnimatedSprite2D.animation = "down" if direction.y > 0 else "top"
		else:
			$AnimatedSprite2D.animation = "left"
	else:
		$AnimatedSprite2D.frame = 0
