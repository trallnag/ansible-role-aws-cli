# Init development environment.
init:
  poetry install
  pre-commit install --install-hooks
  pre-commit install --install-hooks --hook-type commit-msg

# Update development environment.
update:
  poetry update
  pre-commit autoupdate

# Run molecule test scenario(s).
test scenario="all":
  #!/bin/sh
  if [ "{{ scenario }}" = "all" ]; then
    poetry run molecule test --all
  else
    poetry run molecule test --scenario-name "{{ scenario }}"
  fi

# Run role against localhost.
run:
  poetry run ansible-playbook playbook.yaml

# Extract release notes.
extract-notes:
  mkdir -p tmp
  scripts/extract-notes.py --input CHANGELOG.md --output tmp/release.md
  mdformat --wrap=10000 tmp/release.md
