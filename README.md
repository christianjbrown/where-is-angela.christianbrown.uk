# where-is-angela.christianbrown.uk

Angela's page for the relay, live at
[where-is-angela.christianbrown.uk](https://where-is-angela.christianbrown.uk),
built with
[relay-race-tracker-web-app](https://github.com/christianjbrown/relay-race-tracker-web-app),
which is included here as the `engine` submodule.

To set up a page like this for someone you want to follow, start with the
[relay tracker's README](https://github.com/christianjbrown/relay-race-tracker-web-app#readme).
It explains everything in `site/` and how to publish it. This repository is a
finished example of the result.

- `site/` holds everything about Angela and the event: `config.json`,
  `schedule.json`, `route.json`, her sticker (`avatar.png`) and the domain
  (`CNAME`).
- `./build.sh` rebuilds the page into this folder. Commit what it writes:
  GitHub Pages publishes `main` as it is, with no Actions.
- To take a newer engine, `cd engine && git pull origin main`, then rebuild,
  then commit the submodule and the rebuilt files together.

The Google Maps key in `site/config.json` is restricted by referrer to this
site and localhost:8765.
