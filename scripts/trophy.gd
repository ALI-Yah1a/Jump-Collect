extends StaticBody2D

@export var bounce_force := -700

func _on_area_2d_body_entered(body):
	if body.name == "player" or body.is_in_group("player"):
		body.velocity.y = bounce_force
