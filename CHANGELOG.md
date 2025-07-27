# Changelog

## [0.3] - 2025-07-27
### Added
- `FlickeringDirectionalLight3D`: A new flickering light class based on `DirectionalLight3D`
- `FlickeringSpotLight3D`: A new flickering light class based on `SpotLight3D`
- Both support flicker `pattern`, `speed`, and `max_energy` customization.

### Fixed
- `FlickeringOmniLight3D`: Now uses `light_energy` for brightness modulation instead of `omni_attenuation`.

### Changed
- Plugin version updated to 0.3


## [0.2] - 2025-07-24

### Added
- `FlickeringOmniLight3D`: Replacement for the deprecated `FlickeringLight3D`.
- `FlickeringPointLight2D`: Replacement for the deprecated `FlickeringLight2D`.

### Deprecated
- `FlickeringLight3D` is now deprecated and will be removed in the next version. Use `FlickeringOmniLight3D` instead.
- `FlickeringLight2D` is now deprecated and will be removed in the next version. Use `FlickeringPointLight2D` instead.

