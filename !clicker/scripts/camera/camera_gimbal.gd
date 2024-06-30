extends Node3D

var sensitivity: int = 1000
var is_left_mouse_button_pressed: bool = false

func _ready():
	pass

func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT:
			is_left_mouse_button_pressed = event.pressed
	
	if event is InputEventMouseMotion and is_left_mouse_button_pressed:
		rotation.y -= event.relative.x / sensitivity
		rotation.x -= event.relative.y / sensitivity
