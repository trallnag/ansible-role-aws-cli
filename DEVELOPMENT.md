# Development

This document is targeted at project developers. It helps people to make their
first steps. It also serves as a general entry to development documentation like
tooling configuration and usage.

## Requirements

Your environment should fulfill the following basic requirements:

- [Pre-commit](https://pre-commit.com). For managing and maintaining pre-commit
  Git hooks. Optional.
- [Task](https://taskfile.dev). Task runner as simple alternative to Make.
  Optional.
- Unix-like. Not required by itself, but assumed as the standard.

In addition to the following sections in this document, note that the
[`devel`](devel) directory contains more documentation including further
information about the tooling listed above.

## Initial Setup

### Pre-commit Hooks

Ensure that [pre-commit](https://pre-commit.com) is installed globally. Setup
the pre-commit hooks:

```shell
pre-commit install --install-hooks
pre-commit install --install-hooks --hook-type commit-msg
```

Run all hooks to make sure things are alright:

```shell
pre-commit run -a
```

Read [`devel/pre-commit.md`](devel/pre-commit.md) for more info.

### Taskfile

Ensure that [Task](https://taskfile.dev) is installed globally. It is used to
wrap common commands. Can be compared to phony targets in Make.

Read [`devel/task.md`](devel/task.md) for more info.

### Python Packages

Ensure that the packages listed in [`requirements.txt`](./requirements.txt) are
installed and the version constraints are fulfilled.

### Running Tests

Ansible Molecule is used for testing this role. Use either of the following:

```shell
task test
molecule test
```

Note that the existing Molecule scenario is hardcoded to use Docker as its
provider. So Docker must be available as well on the system.

## FAQ

### Why is the extension `.yml` used instead of `.yaml`?

Molecule ignores YAML files that use the `.yaml` extension. See the following
links for more information:

- <https://github.com/ansible-community/molecule/issues/3849>
- <https://github.com/ansible-community/molecule/discussions/3910>
