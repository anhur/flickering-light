extends RefCounted
class_name BaseFlickeringLight

var _time: float = 0.0
var _frame: int = -1
const _TIME_EPSILON := 0.000001


func process(delta: float, pattern: String, speed: float, max_energy: float) -> Variant:
    if pattern.is_empty() or speed <= 0.0:
        return null

    var step := 1.0 / speed
    _time += delta

    var changed := false
    while _time + _TIME_EPSILON >= step:
        _time -= step
        _frame = (_frame + 1) % pattern.length()
        changed = true

    if changed:
        var char = pattern[_frame]
        var value = clamp(char.unicode_at(0) - "a".unicode_at(0), 0, 25)
        return max_energy * (value / 25.0)

    return null
