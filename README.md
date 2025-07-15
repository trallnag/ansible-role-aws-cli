[![status](https://img.shields.io/badge/status-active-brightgreen)](#project-status)
[![release](https://img.shields.io/github/v/release/trallnag/ansible-role-aws-cli)](https://github.com/trallnag/ansible-role-aws-cli/releases)
[![ci](https://img.shields.io/github/actions/workflow/status/trallnag/ansible-role-aws-cli/ci.yaml?label=ci)](https://github.com/trallnag/ansible-role-aws-cli/actions/workflows/ci.yaml)
[![release](https://img.shields.io/github/actions/workflow/status/trallnag/ansible-role-aws-cli/release.yaml?label=release)](https://github.com/trallnag/ansible-role-aws-cli/actions/workflows/release.yaml)

# Ansible Role `trallnag.aws_cli`

Role that installs the [AWS CLI v2](https://github.com/aws/aws-cli/tree/v2)
using the official installer.

Available on
[Ansible Galaxy](https://galaxy.ansible.com/ui/standalone/roles/trallnag/aws_cli).

Also consider:

- [trallnag/ansible-role-aws-ssm-plugin](https://github.com/trallnag/ansible-role-aws-ssm-plugin)
- [trallnag/ansible-role-aws-sam-cli](https://github.com/trallnag/ansible-role-aws-sam-cli)

## Requirements

Some tasks require root privileges. Privilege escalation is performed with
explicit `become: true` statements.

## Role parameters

See [`meta/argument_specs.yml`](./meta/argument_specs.yml).

```yaml
aws_cli__version:
  required: false
  type: str
  default: present
  description:
    - Version of the AWS CLI to install. For example `2.13.0`.
    - Use special value `present` to install latest version once.
    - Use special value `latest` to always install latest version.

aws_cli__bin_dir:
  required: false
  type: str
  default: /usr/local/bin
  description:
    - Bin directory. Used for `--bin-dir` parameter.

aws_cli__install_dir:
  required: false
  type: str
  default: /usr/local/aws-cli
  description:
    - Install directory. Used for `--install-dir` parameter.
```

## Project status

The project is maintained by me, [Tim](https://github.com/trallnag), and I am
interested in keeping it alive as I am actively using it.

## Versioning

The project follows [Semantic Versioning](https://semver.org/).

## Contributing

Contributions are welcome. Please refer to [`CONTRIBUTE.md`](./CONTRIBUTE.md).

## Licensing

This work is licensed under the
[ISC license](https://en.wikipedia.org/wiki/ISC_license). See
[`LICENSE`](./LICENSE) for the license text.

## Template

This project is based on the following
[Copier](https://copier.readthedocs.io/en/stable/) template:
<https://github.com/trallnag/copier-template-ansible-role>.
