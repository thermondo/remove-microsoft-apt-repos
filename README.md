# remove microsoft APT sources from ubuntu workers

This will remove the microsoft APT sources, because they
are broken regularly.

see https://github.com/actions/virtual-environments/issues/323


Example usage:
```yaml
---
name: testing

on:
  pull_request:
  push:

jobs:
  ci:
    runs-on: ubuntu-latest
    steps:
      - uses: thermondo/remove-microsoft-apt-repos
```
