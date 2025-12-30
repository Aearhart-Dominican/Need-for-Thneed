extends StaticBody2D

@onready var tuft: Sprite2D = $trunk/tuft

func _ready() -> void:
	randomize()
	tuft.modulate = Color("ffca30")
	tuft.rotation = randf()

func hit():
	print("hit")
	queue_free()
