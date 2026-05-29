extends Node2D

var car_scene: PackedScene = preload("res://scenes/car.tscn")

func _on_finish_area_2d_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		print(body)
		print("Entered the area")

func _on_car_timer_timeout() -> void:
	var car: Area2D = car_scene.instantiate()
	$GameObjects.add_child(car)
