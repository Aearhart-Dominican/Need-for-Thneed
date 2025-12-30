extends TouchScreenButton

func _ready() -> void:
	pressed.connect(_on_press)
	released.connect(_on_release)
	
func _on_press():
	modulate = Color(0.5, 0.5, 0.5, 0.25)

func _on_release():
	modulate = Color(1.0, 1.0, 1.0, 0.25)
