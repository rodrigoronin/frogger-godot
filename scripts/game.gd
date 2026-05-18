extends Node2D

var car_scene: PackedScene = preload("res://scenes/car.tscn")

func _on_car_timer_timeout() -> void:
	var car = car_scene.instantiate()
	add_child(car)

func _on_finish_area_2d_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		print("Player entered the area")
