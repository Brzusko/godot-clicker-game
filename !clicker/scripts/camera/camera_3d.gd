extends Camera3D

# Exporting field to select node to follow
@export var target_node: Node3D = null

# Exporting variables for zooming 
@export var zoom_speed: float = 1.0
@export var min_fov: float = 75.0
@export var max_fov: float = 180.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if target_node:
		look_at(target_node.global_transform.origin, Vector3.UP)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if target_node:
		look_at(target_node.global_transform.origin, Vector3.UP)

func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_WHEEL_UP:
			fov = clamp(fov - zoom_speed, min_fov, max_fov)
		elif event.button_index == MOUSE_BUTTON_WHEEL_DOWN:
			fov = clamp(fov + zoom_speed, min_fov, max_fov)
	elif event is InputEventMagnifyGesture:
		print(event.factor)
		#fov = clamp(fov / (1 - event.factor * 0.1), min_fov, max_fov )
