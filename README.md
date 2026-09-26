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
  `schedule.json`, `route.json` and her sticker (`avatar.png`). It is the
  only thing to edit.
- The `Deploy` workflow builds the page from `site/` with the engine and
  publishes it to GitHub Pages on every push to `main`. Nothing built is
  committed. Pull requests build it too, and cannot merge unless the build
  passes.
- The domain is set in the repository's Pages settings.
- To take a newer engine, `cd engine && git pull origin main`, then commit
  the submodule.

To look at it locally:

```bash
git submodule update --init
(cd engine && npm ci)
node engine/tools/build.js --site site --out dist
npx --prefix engine sirv dist --port 8765
```

The Google Maps key in `site/config.json` is restricted by referrer to this
site and localhost:8765.
