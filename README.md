[![status](https://img.shields.io/badge/status-active-brightgreen)](#project-status)
[![role](https://img.shields.io/ansible/role/61816)](https://galaxy.ansible.com/trallnag/awscli)
[![quality](https://img.shields.io/ansible/quality/61816)](https://galaxy.ansible.com/trallnag/awscli)
[![downloads](https://img.shields.io/ansible/role/d/61816?label=downloads)](https://galaxy.ansible.com/trallnag/awscli)

# Ansible Role `trallnag.awscli` <!-- omit from toc -->

Role that installs [AWS CLI v2](https://github.com/aws/aws-cli/tree/v2) and the
[AWS CLI SSM plugin](https://github.com/aws/session-manager-plugin) using the
official installers on Linux.

Available on [Ansible Galaxy](https://galaxy.ansible.com/trallnag/awscli).

## Table of Contents <!-- omit from toc -->

- [Scope](#scope)
- [Requirements](#requirements)
- [Role Variables](#role-variables)
- [Examples](#examples)
- [Project Status](#project-status)
- [Contributing](#contributing)
- [Licensing](#licensing)
- [Links](#links)

## Scope

In:

- Installing [AWS CLI v2](https://github.com/aws/aws-cli/tree/v2).
- Installing
  [AWS CLI SSM plugin](https://github.com/aws/session-manager-plugin).
- Installing OS dependencies.

Out:

- Setting up completion for shells.
- Ensuring AWS CLI executables are in `PATH`.

## Requirements

Some tasks require root privileges via `become: true`.

## Role Variables

See [`meta/argument_specs.yml`](meta/argument_specs.yml).

## Examples

Here is a minimal Playbook:

```yaml
- hosts: example
  vars:
    rolespec_validate: true
  roles:
    - name: trallnag.awscli
      vars:
        awscli_version: "2.11.15"
        awscli_ssm_version: "1.2.463.0"
```

## Project Status

Maintained and actively used.

## Contributing

Contributions are welcome. Please refer to [`CONTRIBUTING.md`](CONTRIBUTING).

Consult [`DEVELOPMENT.md`](DEVELOPMENT.md) for guidance regarding development.

Read [`RELEASE.md`](RELEASE.md) for details about the release process.

## Licensing

This work is licensed under the
[Apache License](https://choosealicense.com/licenses/apache-2.0/) (Apache-2.0),
a permissive license whose main conditions require preservation of copyright and
license notices. See [`LICENSE`](LICENSE) for the license text.

This work comes with an explicit [`NOTICE`](NOTICE) file containing additional
legal notices and information.

## Links

- Ansible Galaxy:
  [galaxy.ansible.com/trallnag/awscli](https://galaxy.ansible.com/trallnag/awscli)
- Pre-commit CI:
  [results.pre-commit.ci/repo/github/389439387](https://results.pre-commit.ci/repo/github/389439387)
