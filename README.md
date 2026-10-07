# CIP-160 per-output development executable specification

This branch contains the real Haskell artifact extracted from signed source
`78ef3333bf5803cd76c9880d99b120f287f733c5` in
[colll78/formal-ledger-specifications](https://github.com/colll78/formal-ledger-specifications).
[Upstream source PR 1348](https://github.com/IntersectMBO/formal-ledger-specifications/pull/1348)
includes upstream master through `f4f95d3349a26c8bfcc483dda58fbfab80e3d85c`.
`SOURCE.json` records source/toolchain provenance. `SHA256SUMS` covers all 789
files in `hs/`; its SHA-256 is
`1d6e312a2710a93d32875c2b3bdcd1f798670d4d69483adbbf677d645b863b81`.

The repository's genuine `fls-shake hs` generated this tree with Agda 2.8.0 and
hpack 0.38.3. No generated MAlonzo code was edited. The full specification/proof
closure, example library, all-source typecheck scanner and 39-entry property
dashboard check passed. GHC 9.10.3 compiled the actual public foreign API and
executed all 69 persistent `formal-ledger-test/runtime/Receiving.hs` assertions
from the exact signed source. The Haskell artifact CI job runs these regressions
after extraction and before upload; its pinned shell supplies GHC with text and
ieee754. This local evidence does not claim a new public CI result.

Receiving executes once per protected Plutus output at its original body-local
index, including byte-identical outputs. Its purpose retains that index and the
resolved output; every execution has its own redeemer and budget. Key/native
credential sets remain authorization sets. Fifty-six Receiving regressions cover
raw domains/pointers, exact separate top/child arguments and unequal budgets,
interleaved ordinary/key/native outputs, parent/child isolation through composed
LEDGER, activation, signature/native obligations, legacy visibility and
collateral-only invalid state effects. Four complete-state regressions cover
hard-fork enactment and epoch application from major 12 to 13. Nine additional
regressions cover registered zero-stake/keyless committee seats, exact weights,
ranking/ties, size limits and honored/expired keys under the foreign four-epoch
key-age premise. Run from the source checkout after genuine extraction:

```sh
formal-ledger-test/runtime/run-receiving.sh
```

These regressions use explicit abstract evaluator/signature/context/fee premises
and the foreign Coin projection. They establish modeled structure and state
transitions; actual UPLC context encoding, crypto, priced fees, multiasset
collateral and business predicates require the documented concrete ledger tests.
The ledger adapter supplies actual DSIGN and BLS proof verification. Arbitrary
network-global agreement and endorser-block size conformance remain outside the
foreign model's stated premises.

This is a development artifact. Ledger CI still requires its formal dependency
to be an ancestor of upstream `master-artifacts`. Upstream source acceptance and
artifact generation remain release blockers; this fork does not bypass that
check or claim completed integrated ledger conformance.
