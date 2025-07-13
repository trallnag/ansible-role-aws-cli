# Ansible Role `trallnag.aws_cli` <!-- omit from toc -->

Role that installs the [AWS CLI v2](https://github.com/aws/aws-cli/tree/v2)
using the official installer.

Available on
[Ansible Galaxy](https://galaxy.ansible.com/ui/standalone/roles/trallnag/aws_cli).

Also consider:

- [trallnag/ansible-role-aws-ssm-plugin](https://github.com/trallnag/ansible-role-aws-ssm-plugin)
- [trallnag/ansible-role-aws-sam-cli](https://github.com/trallnag/ansible-role-aws-sam-cli)

## Table of Contents <!-- omit from toc -->

- [Requirements](#requirements)
- [Role Parameters](#role-parameters)
- [Project Status](#project-status)
- [Template](#template)
- [Contributing](#contributing)
- [Licensing](#licensing)

## Requirements

Some tasks require root privileges. Privilege escalation is performed with
explicit `become: true` statements.

## Role Parameters

See [`meta/argument_specs.yml`](meta/argument_specs.yml).

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
  default: /opt/aws-cli
  description:
    - Install directory. Used for `--install-dir` parameter.
```

## Project Status

Maintained and actively used.

## Template

This repository is based on the
[Copier](https://copier.readthedocs.io/en/stable/) template
[trallnag/copier-template-ansible-role](https://github.com/trallnag/copier-template-ansible-role).

## Contributing

Contributions are welcome. Please refer to [`CONTRIBUTING.md`](CONTRIBUTING).

Consult [`DEVELOPMENT.md`](DEVELOPMENT.md) for guidance regarding development.

Read [`RELEASE.md`](RELEASE.md) for details about the release process.

## Licensing

This work is licensed under the
[Apache License](https://choosealicense.com/licenses/apache-2.0) (Apache-2.0), a
permissive license whose main conditions require preservation of copyright and
license notices. See [`LICENSE`](LICENSE) for the license text.

This work comes with an explicit [`NOTICE`](NOTICE) file containing additional
legal notices and information.
