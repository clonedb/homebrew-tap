# clonedb Homebrew tap

Homebrew formulae for [clonedb](https://clonedb.dev) — a CLI that pulls a
referentially-complete subset of a PostgreSQL database into a dev/test database.

## Install

```sh
brew install clonedb/tap/clonedb
```

### Dev (prerelease) channel

```sh
brew install clonedb/tap/clonedb-dev
```

The dev channel `conflicts_with` stable — installing one swaps out the other.

---

Formulae under `Formula/` and the release tarballs attached to this repo's
GitHub Releases are generated and updated automatically by the clonedb release
pipeline. Don't edit them by hand.
