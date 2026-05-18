extends Area2D

var direction: Vector2 = Vector2.LEFT
var speed = 2

func _process(delta: float) -> void:
	position += direction * speed
