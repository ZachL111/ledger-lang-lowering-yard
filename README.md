# ledger-lang-lowering-yard

`ledger-lang-lowering-yard` is a compact Julia repository for compilers, centered on this goal: Create a Julia reference implementation for lowering workflows, centered on security rule linting, safe and unsafe fixtures, and remediation hints.

## Project Rationale

The point is to make a small domain rule concrete enough that a reader can change it and immediately see what broke.

## Ledger Lang Lowering Yard Review Notes

Start with `IR pressure` and `stack depth`. Those cases create the widest score spread in this repo, so they are the best quick check when the model changes.

## Feature Set

- `fixtures/domain_review.csv` adds cases for IR pressure and lowering drift.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/ledger-lang-lowering-walkthrough.md` walks through the case spread.
- The Julia code includes a review path for `IR pressure` and `stack depth`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Architecture

The fixture data drives the tests. The code stays thin, while `metadata/domain-review.json` and `config/review-profile.json` explain what each case is meant to protect.

The Julia implementation avoids hidden state so fixture changes are easy to reason about.

## Usage

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Test Command

That command is also the regression path. It verifies the domain cases and catches mismatches between the CSV, metadata, and code.

## Next Improvements

The fixture set is small enough to audit by hand. The next useful expansion is malformed input coverage, not extra surface area.
