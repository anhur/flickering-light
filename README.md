# Flickering Light for Godot

This plugin adds flickering behavior to both 2D and 3D lights in Godot Engine using lightstyle patterns inspired by Quake and Half-Life.

## Features

- Supports OmniLight3D and OmniLight2D
- Flicker patterns are defined as strings (e.g. "mmamammmmammamamaaamammma")
- Adjustable speed and pattern
- Lightweight and editor-friendly
- Compatible with Godot 4.x
- Fully runtime-animated (`_process()`-based).
- Ideal for torches, faulty bulbs, or horror scenes.


## Installation

1. Install via AssetLib, or copy the `addons/flickering_light` folder into your project.
2. In the Godot Editor, go to **Project > Project Settings > Plugins** and enable **Flickering Light**.

## Usage

### For 3D

1. Add a `FlickeringLight3D` node to your scene.
2. Adjust the `pattern` and `speed` properties in the Inspector.

### Or you can use it via code

```gdscript
func _ready() -> void:
    var flicker_light = FlickeringLight3D.new()
    flicker_light.max_energy = 2.0
    flicker_light.pattern = 'mmaammzmaamamzzmaam'
    flicker_light.position = Vector3(0, 1, 1.5)
    add_child(flicker_light)
```

### For 2D

1. Add a `FlickeringLight2D` node to your scene.
2. Adjust the `pattern` and `speed` properties in the Inspector.

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

- Tested with Godot 4.4.
- Only OmniLight2D and OmniLight3D are currently supported.

