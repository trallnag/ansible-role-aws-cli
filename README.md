[![role](https://img.shields.io/ansible/role/55570)](https://galaxy.ansible.com/trallnag/awscli)
[![quality](https://img.shields.io/ansible/quality/55570)](https://galaxy.ansible.com/trallnag/awscli)
[![downloads](https://img.shields.io/ansible/role/d/55570?label=downloads)](https://galaxy.ansible.com/trallnag/awscli)

# Ansible Role `trallnag.awscli`

Ansible role that installs [AWS CLI][awscli] with the official installer on Ubuntu and Debian.

[awscli]: https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2-linux.html

Available on [Ansible Galaxy](https://galaxy.ansible.com/trallnag/awscli).

## Content

* Installs all dependencies with APT.
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

* Only Ubuntu and Debian supported due to APT dependencies.

## Special Dependencies

None.

## License

Apache-2.0

## Author Information

Trallnag
