extends RefCounted
class_name BaseFlickeringLight

var _time: float = 0.0
var _frame: int = 0


func process(delta: float, pattern: String, speed: float, max_energy: float) -> Variant:
    if pattern.is_empty():
        return null

    _time += delta
    if _time >= 1.0 / speed:
        _time = 0.0
        _frame = (_frame + 1) % pattern.length()
        var char = pattern[_frame]
        var value = clamp(char.unicode_at(0) - "a".unicode_at(0), 0, 25)
        return max_energy * (value / 25.0)

    return null
