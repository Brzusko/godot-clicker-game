extends Node3D;
class_name IslandCamera;

@export var _default_camera_target: Node3D;
var _current_camera_target: Node3D;

func select_new_camera_target(new_target: Node3D) -> void:
	pass;

func return_to_default_camera_target() -> void:
	pass;
