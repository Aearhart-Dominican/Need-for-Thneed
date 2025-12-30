extends Node2D

@onready var sprite_2d: Sprite2D = $Sprite2D
@onready var interactable: Area2D = $Interactable
@onready var timer: Timer = $Timer

func _ready() -> void:
	interactable.interact = _on_interact
	
func _on_interact():
	sprite_2d.modulate = Color(0.803, 0.113, 0.0, 1.0)
	interactable.is_interactable = false
	timer.start()

func _on_timer_timeout() -> void:
	sprite_2d.modulate = Color(1.0, 1.0, 1.0, 1.0)
	interactable.is_interactable = true
