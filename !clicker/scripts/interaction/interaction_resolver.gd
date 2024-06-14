extends Node;
class_name InteractionResolver;

@export var _target_camera: Camera3D = null;

var _main_view_port: Viewport = null;

func _ready() -> void:
    _main_view_port = get_viewport();

func _physics_process(delta: float) -> void:
    if !_target_camera:
        return;
    
    var projected_pos: Vector3 = _target_camera.project_position(_main_view_port.get_mouse_position(), 1.0);
    print(projected_pos);