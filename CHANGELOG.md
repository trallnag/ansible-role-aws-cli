# Changelog

All notable changes to this project are documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0),
and adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0).

## Unreleased

### Changed

- Updated documentation.
- Switched permissions of temporary artifacts from `u=rw,g=r,o=r` to
  `u=rw,g=,o=`.
- Updated public key.
- Changed license from Apache-2.0 to ISC.
- Added additional underscore to all variables.
- Changed default install dir to `/usr/local/aws-cli`.

## [0.6.0](https://github.com/trallnag/ansible-role-aws-cli/compare/v0.5.0...v0.6.0) / 2024-07-24

### Changed

- Updated documentation.

## [0.5.0](https://github.com/trallnag/ansible-role-aws-cli/compare/v0.4.0...v0.5.0) / 2024-05-20

### Added

- Instead of import the public key used for integration check to the default
  keyring, now a temporary keyring is used instead.

## [0.4.0](https://github.com/trallnag/ansible-role-aws-cli/compare/v0.3.0...v0.4.0) / 2024-05-18

Major redesign, basically starting from scratch.

### Changed

- Removed installation of session manager plugin.
- Added several Molecule scenarios for better testing.
- Added special values `latest` and `present` in addition to exact versions.
- Other improvements.
- Renamed from `awscli` to `aws_cli`.
- Changed default installation location to `/opt/aws-cli`.

## [0.3.0](https://github.com/trallnag/ansible-role-aws-cli/compare/v0.2.0...v0.3.0) / 2023-07-09

### Changed

- Bumped default version of AWS CLI from `2.11.18` to `2.13.0`.

## [0.2.0](https://github.com/trallnag/ansible-role-aws-cli/compare/v0.1.0...v0.2.0) / 2023-05-07

### Changed

- Bumped default version of AWS CLI from `2.11.15` to `2.11.18`.

## [0.1.0](https://github.com/trallnag/ansible-role-aws-cli/compare/0f0c4a8a6659cf59e205e9993b2b237bebce7005...v0.1.0) / 2023-03-22

Initial release after project cleanup.
