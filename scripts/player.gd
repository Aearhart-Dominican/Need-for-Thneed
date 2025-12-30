extends CharacterBody2D


@export var speed:= 400
@export var axe: Node2D

func _physics_process(_delta: float) -> void:
	get_input()
	move_and_slide()

func get_input():
	var input_dir = Input.get_vector("left", "right", "up", "down").normalized()
	velocity = input_dir * speed

func _on_axe_pickup() -> void:
	axe.is_active = true

func _input(event: InputEvent) -> void:
	if event.is_action("down"):
		axe.rotation_degrees = 180
	if event.is_action("left"):
		axe.rotation_degrees = 270
	if event.is_action("right"):
		axe.rotation_degrees = 90
	if event.is_action("up"):
		axe.rotation_degrees = 0
