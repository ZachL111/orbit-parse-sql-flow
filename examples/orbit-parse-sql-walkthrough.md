# Orbit Parse SQL Flow Walkthrough

I use this file as a small checklist before changing the Ruby implementation.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | token drift | 183 | ship |
| stress | grammar width | 205 | ship |
| edge | label quality | 197 | ship |
| recovery | error locality | 171 | ship |
| stale | token drift | 164 | ship |

Start with `stress` and `stale`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

If `stale` becomes less cautious without a clear reason, I would inspect the drag input first.
