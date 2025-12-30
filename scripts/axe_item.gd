extends Node2D

signal axe_pickup

@onready var interactable: Area2D = $Interactable
@onready var animation_player: AnimationPlayer = $AnimationPlayer

func _ready() -> void:
	interactable.interact = _on_interact

func _on_interact():
	animation_player.play("pickup")
	interactable.is_interactable = false

func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	if anim_name == "pickup":
		axe_pickup.emit()
		queue_free()
