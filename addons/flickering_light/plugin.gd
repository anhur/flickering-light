@tool
extends EditorPlugin

func _enter_tree():
    add_custom_type(
        "FlickeringLight2D", "Light2D",
        preload("res://addons/flickering_light/flickering_light_2d.gd"),
        null
    )
    add_custom_type(
        "FlickeringLight3D", "OmniLight3D",
        preload("res://addons/flickering_light/flickering_light_3d.gd"),
        null
    )

func _exit_tree():
    remove_custom_type("FlickeringLight2D")
    remove_custom_type("FlickeringLight3D")
