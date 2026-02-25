# Changelog

## [0.5.2] - 2026-02-25
### Fixed
- `BaseFlickeringLight`: Made flicker timing FPS-independent by preserving accumulated time (`_time -= step`) instead of resetting to zero.
- `BaseFlickeringLight`: Added multi-step catch-up (`while _time >= step`) to keep pattern progression stable during long frames.
- `BaseFlickeringLight`: Added a small timing epsilon in step checks to avoid floating-point drift between frame rates.
- `BaseFlickeringLight`: Added a safety guard for non-positive `speed`.

## [0.5] - 2026-02-24
### Changed
- Added `BaseFlickeringLight` to centralize shared flicker frame/time processing logic.
- Refactored all flickering light classes to delegate `_process()` calculations to `BaseFlickeringLight`.
- Kept per-node energy assignment in each class:
  - 2D lights set `energy`.
  - 3D lights set `light_energy`.

## [0.4] - 2025-08-21
### Added
- `FlickeringDirectionalLight2D`: A new flickering light class based on `DirectionalLight2D`.
- `FlickeringLightOccluder2D`: A new flickering light class based on `LightOccluder2D`.

### Changed
- `FlickeringLight2D` replaced with `FlickeringPointLight2D`.
- `FlickeringLight3D` replaced with `FlickeringOmniLight3D`.

### Removed
- Deprecated warnings for old classes (`FlickeringLight2D`, `FlickeringLight3D`).


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
