extends Node2D

@onready var camera = $player/Camera2D

func _ready():
	camera.limit_left = 0
	camera.limit_top = 0
	camera.limit_right = 1920
	camera.limit_bottom = 1001

func _on_camera_trigger_body_entered(body):
	if body.name == "player":
		camera.limit_left = 1920
		camera.limit_right = 3823


func _on_camera_trigger_2_body_entered(body):
	if body.name == "player":
		camera.limit_left = 3823
		camera.limit_right = 5742


func _on_camera_trigger_3_body_entered(body):
	if body.name == "player":
		camera.limit_left = 5742
		camera.limit_right = 7664
