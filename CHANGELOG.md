# Changelog
All notable changes to LibDCSwift will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.3.0] - 2025-01-05
### Changed
- Improved device name normalization using libdivecomputer's descriptor system
- Removed manual device name parsing in favor of libdivecomputer's built-in filters

## [1.2.1] - 2025-01-04
### Changed
- Fixed type-casting in BLEManager

## [1.2.0] - 2025-01-04
### Changed
- Removed bridging header (as it is not supported in SPM) due to conflicts with client code using the package

## [1.1.0] - 2025-01-03
### Added
- Active download state preservation during background operations
- Improved UI state restoration when returning to device view
- Enhanced download progress tracking

## [1.0.0] - 2025-01-03
### Added
- Initial release of LibDCSwift
- Core BLE functionality in BLEManager.swift
- Dive computer communication bridge (LibDCBridge)
- Integration with libdivecomputer (Clibdivecomputer)
- Basic dive log retrieval functionality
- Models for device configuration and dive data
- Generic parser for dive computer data
- Logging system

### Components
#### LibDCSwift
- Logger implementation
- BLE management system
- Device configuration handling
- Dive data models
- Stored device management
- Sample data processing
- Dive data view model
- Generic parser implementation
- Dive log retrieval system

#### LibDCBridge
- C bridge implementation (configuredc.c)
- BLE bridge implementation (BLEBridge.m)
- Objective-C bridging header

#### Clibdivecomputer
- Core libdivecomputer integration
- Custom header configurations
- Source implementations

### Dependencies
- iOS 15.0+
- macOS 12.0+
- Swift 5.10

[1.1.0]: https://github.com/latishab/LibDCSwift/releases/tag/1.1.0
[1.0.0]: https://github.com/latishab/LibDCSwift/releases/tag/1.0.0
[1.2.0]: https://github.com/latishab/LibDCSwift/releases/tag/1.2.0
[1.2.1]: https://github.com/latishab/LibDCSwift/releases/tag/1.2.1
[1.3.0]: https://github.com/latishab/LibDCSwift/releases/tag/1.3.0
