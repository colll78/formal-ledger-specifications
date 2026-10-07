# CIP-160 development executable specification

This branch contains the real Haskell extraction from source commit
`2386d21196ebaac44138a302d80102899dcb6e10` in
[formal ledger PR 1348](https://github.com/IntersectMBO/formal-ledger-specifications/pull/1348).

`SOURCE.json` records the source tree, pinned tools and validation status.
`SHA256SUMS` covers every generated file under `hs/`; no generated source was
edited. Verify it with `sha256sum --check SHA256SUMS`.

This is a development dependency for executable comparison. It is not an
upstream release artifact and does not satisfy ledger CI's requirement that the
formal dependency be an ancestor of upstream `master-artifacts`. The source PR
is being integrated with current upstream changes before final extraction.
