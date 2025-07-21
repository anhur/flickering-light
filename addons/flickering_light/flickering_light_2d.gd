extends PointLight2D
class_name FlickeringLight2D

@export var pattern: String = "mmamammmmammamamaaamammma"
@export var speed: float = 10.0  # frames per second
@export var max_energy: float = 2.0  # maximum brightness

var _time := 0.0
var _frame := 0

func _process(delta: float) -> void:
    if pattern.is_empty():
        return

    _time += delta
    if _time >= 1.0 / speed:
        _time = 0.0
        _frame = (_frame + 1) % pattern.length()
        var char = pattern[_frame]
        var value = clamp(char.unicode_at(0) - 'a'.unicode_at(0), 0, 25)
        self.energy = max_energy * (value / 25.0)

