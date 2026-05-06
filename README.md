# orbit-parse-sql-flow

`orbit-parse-sql-flow` keeps a focused Ruby implementation around parsers. The project goal is to implement a Ruby parsers project for sql state machine modeling, using transition tables and invalid-transition tests.

## Use Case

The point is to make a small domain rule concrete enough that a reader can change it and immediately see what broke.

## Orbit Parse SQL Flow Review Notes

`stress` and `stale` are the cases worth reading first. They show the optimistic and cautious ends of the fixture.

## Highlights

- `fixtures/domain_review.csv` adds cases for token drift and grammar width.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/orbit-parse-sql-walkthrough.md` walks through the case spread.
- The Ruby code includes a review path for `grammar width` and `token drift`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Code Layout

The core code exposes a scoring path and the added review layer uses `signal`, `slack`, `drag`, and `confidence`. The domain terms are `token drift`, `grammar width`, `label quality`, and `error locality`.

The Ruby code keeps the review rule close to the tests.

## Run The Check

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Regression Path

The check exercises the source code and the review fixture. `stress` is the high score at 205; `stale` is the low score at 164.

## Future Work

No external service is required. A deeper version would add more negative cases and a clearer boundary around invalid input.
