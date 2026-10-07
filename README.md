# CIP-160 development executable specification

This branch contains the real Haskell artifact extracted from signed source
`06dbab86667ad6efd3151b460d63daeae74ca042` in
[colll78/formal-ledger-specifications](https://github.com/colll78/formal-ledger-specifications).
[Upstream source PR 1348](https://github.com/IntersectMBO/formal-ledger-specifications/pull/1348)
includes upstream master through `f4f95d3349a26c8bfcc483dda58fbfab80e3d85c`.
`SOURCE.json` records source/toolchain provenance. `SHA256SUMS` covers all 789
files in `hs/`; its SHA256 is
`11d34721c5ad304d6ed0f3109d758e6f3dee18c21f7bb29a244bed024be5fa1b`.

The repository's `fls-shake hs` generated this tree with Agda 2.8.0 and
hpack 0.38.3. No generated MAlonzo code was edited. The full specification/proof
closure, example library, all-source typecheck scanner and 38-entry property
dashboard check passed. GHC 9.10.3 compiled the actual public foreign API and
executed all 41 persistent `formal-ledger-test/runtime/Receiving.hs` assertions.
The Haskell artifact CI job runs these regressions after extraction and before
upload; its pinned development shell explicitly supplies GHC with text and ieee754.

Those assertions cover top/child protection activation, key/native/Plutus
witness and redeemer obligations, unique sorted pointers with duplicate outputs
and differing stake credentials, one grouped invocation and preservation of
distinct purposes even under equal foreign contexts, V1 versus V2/V3 reference
visibility, collateral-only invalid-batch state effects, and budget admission
below/equal to either maximum plus rejection above either dimension and
aggregate parent/child budgets. Run from the source checkout after extraction:

```sh
formal-ledger-test/runtime/run-receiving.sh
```

These regressions use explicit abstract evaluator/signature/context/fee premises
and the foreign Coin projection. They establish modeled structure and state
transitions; actual UPLC context encoding, crypto, priced fees, multiasset
collateral and business predicates require the documented concrete ledger tests.
The ledger conformance adapter uses real DSIGN/BLS proof verification.

This is a development artifact. Ledger CI still requires its formal dependency
to be an ancestor of upstream `master-artifacts`. Upstream source acceptance and
artifact generation remain release blockers; this fork does not bypass that
check or claim completed ledger conformance.
