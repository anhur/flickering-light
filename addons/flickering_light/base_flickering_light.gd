extends RefCounted
class_name BaseFlickeringLight

var _time: float = 0.0
var _frame: int = -1
const _TIME_EPSILON := 0.000001
var _phase_initialized: bool = false


func process(delta: float, pattern: String, speed: float, max_energy: float, phase: float = 0.0) -> Variant:
    if pattern.is_empty() or speed <= 0.0:
        return null

    if not _phase_initialized:
        var wrapped_phase := wrapf(phase, 0.0, 1.0)
        var phase_index := int(floor(wrapped_phase * pattern.length())) % pattern.length()
        _frame = phase_index - 1
        _phase_initialized = true

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
