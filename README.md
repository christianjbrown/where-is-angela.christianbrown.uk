# where-is-angela-2.christianbrown.uk

Angela's page for the relay, built with
[relay-race-tracker-web-app](https://github.com/christianjbrown/relay-race-tracker-web-app),
which is included here as the `engine` submodule.

- `site/` holds everything about Angela and the event: `config.json`,
  `schedule.json`, `route.json`, her sticker (`avatar.png`) and the domain
  (`CNAME`).
- `./build.sh` rebuilds the page into this folder. Commit what it writes:
  GitHub Pages publishes `main` as it is, with no Actions.
- To take a newer engine, `cd engine && git pull origin main`, then rebuild,
  then commit the submodule and the rebuilt files together.

The Google Maps key in `site/config.json` is restricted by referrer to this
site, where-is-angela.christianbrown.uk and localhost:8765.
