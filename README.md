[![primary](https://github.com/trallnag/ansible-role-awscli/actions/workflows/primary.yaml/badge.svg)](https://github.com/trallnag/ansible-role-awscli/actions/workflows/primary.yaml)
[![role](https://img.shields.io/ansible/role/55771)](https://galaxy.ansible.com/trallnag/awscli)
[![quality](https://img.shields.io/ansible/quality/55771)](https://galaxy.ansible.com/trallnag/awscli)
[![downloads](https://img.shields.io/ansible/role/d/55771?label=downloads)](https://galaxy.ansible.com/trallnag/awscli)

# Ansible Role `trallnag.awscli`

Ansible role that installs [AWS CLI][awscli] using the official installer on Linux.

[awscli]: https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2-linux.html

Available on [Ansible Galaxy](https://galaxy.ansible.com/trallnag/awscli).

## Scope

In:

* Installing AWS CLI.
* Installing OS dependencies.

Out:

* Setting up completion for shells.
* Adding AWS CLI executables to PATH.

## Special Requirements

None.

## Special Dependencies

None.

## Role Variables

Check out [`meta/argument_specs.yaml`](meta/argument_specs.yaml).

## Examples

Here is a minimal Playbook:

```yaml
- name: Playbook
  hosts: myhost
  remote_user: myuser
  vars:
    rolespec_validate: true
  roles:
    - name: trallnag.awscli
      vars:
        awscli_version: 2.2.22
```

## License

Distributed under the MIT License. See [`LICENSE`](LICENSE) for more information.

## Contact

```txt
Tim Schwenke <tim.schwenke@trallnag.com>
ACCB8F306184BEEE49E7370E5DBF2C327E72AA3F
```
