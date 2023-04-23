# Pre-Commit

Used for managing Git hooks. Must be installed globally on the respective
system. As it is written in Python, for example
[`pipx`](https://github.com/pypa/pipx) can be used to install it.

- [pre-commit.com](https://pre-commit.com)
- [github.com/pre-commit/pre-commit](https://github.com/pre-commit/pre-commit)

Whenever this repository is initially cloned, the following should be executed:

```shell
pre-commit install --install-hooks
pre-commit install --install-hooks --hook-type commit-msg
```

Pre-commit should now run on every commit. It is also used in GitHub Actions.

It is configured via [`.pre-commit-config.yaml`](../.pre-commit-config.yaml).

The service [pre-commit.ci](https://pre-commit.ci/) is used to run pre-commit
continuously. Setting this up requires configuration of the "pre-commit ci"
GitHub app installation.

## Housekeeping

### Update hooks

```shell
pre-commit autoupdate
```

## Cheat Sheet

### Run pre-commit against all files

```shell
pre-commit run -a
```

### Run specific hook against all files

```shell
pre-commit run -a $HOOK
```
