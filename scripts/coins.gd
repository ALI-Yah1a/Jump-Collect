extends Area2D

@onready var sprite = $AnimatedSprite2D
@onready var score: Node = $"../../Score"
@onready var pickup_sound = $PickupSound

func _ready():
	sprite.play("idle")

func _on_body_entered(body):
	score.add_point()
	if body.name == "player":
		collect()

func collect():
	$CollisionShape2D.disabled = true
	pickup_sound.play()
	sprite.play("collect")
	await sprite.animation_finished
	queue_free()
