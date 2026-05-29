extends Area2D

var direction: Vector2 = Vector2.LEFT
var speed = 120

func _physics_process(delta: float) -> void:
	position += direction * speed * delta


func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()
