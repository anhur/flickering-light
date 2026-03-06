extends LightOccluder2D
class_name FlickeringLightOccluder2D

@export var pattern: String = "mmamammmmammamamaaamammma"
@export var speed: float = 10.0  # frames per second
@export_range(0.0, 1.0, 0.001) var phase: float = 0.0
@export var max_energy: float = 2.0  # maximum brightness

var _base_flickering_light := BaseFlickeringLight.new()


func _process(delta: float) -> void:
    var next_energy = _base_flickering_light.process(delta, pattern, speed, max_energy, phase)
    if next_energy != null:
        self.energy = next_energy
