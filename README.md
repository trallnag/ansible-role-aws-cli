[![role](https://img.shields.io/ansible/role/55771)](https://galaxy.ansible.com/trallnag/awscli)
[![quality](https://img.shields.io/ansible/quality/55771)](https://galaxy.ansible.com/trallnag/awscli)
[![downloads](https://img.shields.io/ansible/role/d/55771?label=downloads)](https://galaxy.ansible.com/trallnag/awscli)

# Ansible Role `trallnag.awscli`

Ansible role that installs [AWS CLI][awscli] using the official installer on Linux.

[awscli]: https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2-linux.html

Available on [Ansible Galaxy](https://galaxy.ansible.com/trallnag/awscli).

## Content

* Installs all dependencies for Debian, RedHat, or manually defined packages.
* Configures tab completion for Bash.

## Role Variables

```yaml
awscli_version:
  default: 2.2.22
  type: raw
  required: false
  description: >-
    Version to install. Check here:
    <https://github.com/aws/aws-cli/blob/v2/CHANGELOG.rst>.

awscli_os_pkgs:
  default: []
  type: list
  elements: str
  required: false
  description: >-
    OS packages that should be installed using the default package manager
    selected by the generic package module. Only use this if the targeted
    OS family is not RedHat nor Debian or the defaults just don't work for
    you. Check here for requirements:
    <https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2-linux.html#cliv2-linux-install>.
```

## Example Playbook

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

## Special Requirements

None.

## Special Dependencies

None.

## License

Apache-2.0

## Author Information

Trallnag
