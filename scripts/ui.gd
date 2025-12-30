extends Control

@export var axe_button: Node2D

func _ready() -> void:
	axe_button.visible = false

func _on_axe_pickup() -> void:
	axe_button.visible = true
