@tool
extends EditorPlugin


func _enter_tree():
    add_custom_type(
        "FlickeringPointLight2D", "Light2D",
        preload("res://addons/flickering_light/flickering_point_light_2d.gd"),
        null
    )
    add_custom_type(
        "FlickeringDirectionalLight2D", "DirectionalLight2D",
        preload("res://addons/flickering_light/flickering_directional_light_2d.gd"),
        null
    )
    add_custom_type(
        "FlickeringLightOccluder2D", "LightOccluder2D",
        preload("res://addons/flickering_light/flickering_light_occluder_2d.gd"),
        null
    )
    add_custom_type(
        "FlickeringOmniLight3D", "OmniLight3D",
        preload("res://addons/flickering_light/flickering_omni_light_3d.gd"),
        null
    )
    add_custom_type(
        "FlickeringDirectionalLight3D", "DirectionalLight3D",
        preload("res://addons/flickering_light/flickering_directional_light_3d.gd"),
        null
    )
    add_custom_type(
        "FlickeringSpotLight3D", "SpotLight3D",
        preload("res://addons/flickering_light/flickering_spot_light_3d.gd"),
        null
    )

func _exit_tree():
    remove_custom_type("FlickeringPointLight2D")
    remove_custom_type("FlickeringDirectionalLight2D")
    remove_custom_type("FlickeringLightOccluder2D")
    remove_custom_type("FlickeringOmniLight3D")
    remove_custom_type("FlickeringDirectionalLight3D")
    remove_custom_type("FlickeringSpotLight3D")

