# Flickering Light for Godot

This plugin adds flickering behavior to both 2D and 3D lights in Godot Engine using lightstyle patterns inspired by Quake and Half-Life.

## Features

- Supports FlickeringPointLight2D, FlickeringDirectionalLight2D, FlickeringLightOccluder2D, FlickeringOmniLight3D, FlickeringDirectionalLight3D, and FlickeringSpotLight3D
- Flicker patterns are defined as strings (e.g. "mmamammmmammamamaaamammma")
- Adjustable speed and pattern
- Per-light `phase` offset to shift where flicker starts in the pattern
- FPS-independent timing based on `delta` accumulation
- Lightweight and editor-friendly
- Compatible with Godot 4.x
- Fully runtime-animated (`_process()`-based).
- Ideal for torches, faulty bulbs, or horror scenes.


## Installation

1. Install via AssetLib, or copy the `addons/flickering_light` folder into your project.
2. In the Godot Editor, go to **Project > Project Settings > Plugins** and enable **Flickering Light**.

## Usage

### For 3D

You can use one of the following nodes:

- `FlickeringOmniLight3D`
- `FlickeringDirectionalLight3D`
- `FlickeringSpotLight3D`

### For 2D

You can use one of the following nodes:

- `FlickeringPointLight2D`
- `FlickeringDirectionalLight2D`
- `FlickeringLightOccluder2D`

1. Add the desired node to your scene.
2. Adjust the `pattern`, `speed`, `phase`, and `max_energy` properties in the Inspector.

### Or you can use it via code

```gdscript
func _ready() -> void:
    var flicker_light = FlickeringOmniLight3D.new()
    flicker_light.max_energy = 2.0
    flicker_light.pattern = 'mmaammzmaamamzzmaam'
    flicker_light.position = Vector3(0, 1, 1.5)
    add_child(flicker_light)
```

## Pattern Format

Each character in the pattern represents a brightness level:

- 'a' is darkest
- 'm' is medium light
- 'z' is brightest

The brightness is calculated using:  
`intensity = (char - 'a') / 25.0`

Examples:

- `"mmamammmmammamamaaamammma"`: erratic flicker
- `"abcdefghijklmnopqrstuvwxyzyxwvutsrqponmlkjihgfedcba"`: smooth pulse

## License

This plugin is distributed under the MIT License. See the LICENSE file for details.

## Compatibility

- Tested with Godot 4.4, 4.4.1, 4.5.1, and 4.6.1.
- Supports: FlickeringPointLight2D, FlickeringDirectionalLight2D, FlickeringLightOccluder2D, FlickeringOmniLight3D, FlickeringDirectionalLight3D, and FlickeringSpotLight3D.
