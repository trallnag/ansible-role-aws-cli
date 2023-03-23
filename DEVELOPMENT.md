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
