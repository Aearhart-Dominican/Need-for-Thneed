extends Node2D

@onready var swing_area: CollisionShape2D = $Area2D/CollisionShape2D
@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var sprite_2d: Sprite2D = $Sprite2D

var is_active = false

func _ready() -> void:
	swing_area.set_deferred("disabled", true)
	sprite_2d.visible = false
	
func _input(event: InputEvent) -> void:
	if event.is_action_pressed("swing") and is_active:
		swing_area.set_deferred("disabled", false)
		animation_player.play("swing")

func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	if anim_name == "swing":
		swing_area.set_deferred("disabled", true)

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.has_method("hit"):
		body.hit()
