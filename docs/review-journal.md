# Review Journal

The cases below are the review handles I would use before changing the implementation.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its parsers focus without claiming live deployment or external usage.

## Cases

- `baseline`: `token drift`, score 183, lane `ship`
- `stress`: `grammar width`, score 205, lane `ship`
- `edge`: `label quality`, score 197, lane `ship`
- `recovery`: `error locality`, score 171, lane `ship`
- `stale`: `token drift`, score 164, lane `ship`

## Note

A future change should add new cases before it changes the scoring rule.
