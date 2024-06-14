# How to run project

- Download Godot v4.2.2 (standar version, not mono!!)
- Clone/fork repo
- Open project via project manager

# Coding conventions

Every contributor has to follow specifed below coding conventions.

### Example class

```gdscript
extends Node
class_name ExampleClass

# Classes should be self-contained and immutable. Only instances of the class can override their
# variables/state. To change their state, use methods instead.

# Exposing a private/protected integer variable.
@export var _example_var_int: int = 1

# Declaration of a private/protected integer variable.
var _example_var_int_two: int = 2

# Using the shortcut get_node() is prohibited.
@onready var _wrong_node_reference: Node3D = $Node3D

# Correct way to export a reference to another node.
# You can assign the node via the inspector in the editor.
@export var _correct_node_reference: Node3D = null

# Enums should start with a NONE field and end with a MAX field.
enum test_enum {
    NONE,
    ONE,
    MAX
}

# Every expression should end with a semicolon if possible.

# Static typing is used in every aspect of our development.
func _add_two(left: int, right: int) -> int:
    return left + right

# If a method signature is long, you can define a custom class derived from RefCounted/Object type.
func _add_alot_of_floats(one: float, two: float, three: float, four: float, five: float) -> float:
    return one + two + three + four + five

class Simplified:
    extends RefCounted

    var _one: float
    var _two: float
    var _three: float
    var _four: float
    var _five: float

    # _init method acts like a constructor in other OOP languages.
    func _init(one: float, two: float, three: float, four: float, five: float) -> void:
        _one = one
        _two = two
        _three = three
        _four = four
        _five = five

func _process_simplified(simp: Simplified) -> float:
    # Do something with the simp variable.
    return 0

# Public virtual method names start with one underscore. Virtual methods are meant to be overridden.
func _public_virtual() -> void:
    return

# Private/protected method names start with two underscores. These methods can be overridden.
func __private_or_protected() -> void:
    pass

# Public methods that are not meant to be overridden start without an underscore.
func public_non_virtual() -> void:
    pass
```