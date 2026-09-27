# Where is Angela? 🏃‍♀️

[![Deploy](https://github.com/christianjbrown/where-is-angela.christianbrown.uk/actions/workflows/deploy.yml/badge.svg?branch=main)](https://github.com/christianjbrown/where-is-angela.christianbrown.uk/actions/workflows/deploy.yml)
[![Live](https://img.shields.io/website?url=https%3A%2F%2Fwhere-is-angela.christianbrown.uk&label=live&up_message=up&down_message=down)](https://where-is-angela.christianbrown.uk)
[![Built with Relay Race Tracker](https://img.shields.io/badge/built%20with-Relay%20Race%20Tracker-EB6834)](https://github.com/christianjbrown/relay-race-tracker-web-app)

A live map of Angela running the ING Feel Good Event 2026, at
[where-is-angela.christianbrown.uk](https://where-is-angela.christianbrown.uk).
The event is a relay from Düsseldorf to Brussels through Germany 🇩🇪, the
Netherlands 🇳🇱 and Belgium 🇧🇪, from
Friday 25 to Monday 28 September 2026. The course is about 836 km, run day and
night by teams taking turns. Angela is in Group A and travels between her
legs in Bus 2 🚌.

She runs six legs, 232.9 km in all, then joins the whole group for the run in
to the finish in Brussels on Monday afternoon 🏁:

| Leg | | Starts (CEST) | From | To | km |
|---|---|---|---|---|---|
| 1 | 🇩🇪 ☀️ | Fri 15:00 | Düsseldorf | Oberhausen | 38 |
| 2 | 🇩🇪 🌙 | Sat 03:00 | Legden | Rheine | 39.5 |
| 3 | 🇩🇪 ☀️ | Sat 15:00 | Sögel | Rhede (Ems) | 39.2 |
| 4 | 🇳🇱 🌙 | Sun 03:00 | Lutjegast | Leeuwarden | 36.9 |
| 5 | 🇳🇱 🌙 | Sun 20:30 | Voorschoten | Barendrecht | 40.3 |
| 6 | 🇧🇪 ☀️ | Mon 08:30 | Kapellen | Willebroek | 39 |

🌙 marks a leg run in the dark.

<p>
  <img src="docs/screenshot-desktop.png" width="72%" alt="The page on a computer: Angela halfway through leg 3, Sögel to Rhede, with 21.6 km to go and live GPS, on a dark map of the whole route">
  <img src="docs/screenshot-phone.png" width="24%" alt="The page on a phone later on the same leg: Angela on leg 3 with 12.5 km to go">
</p>

📡 The page follows her with Chronorace's live GPS trackers: the team's runner
tracker while she is on a leg, and her bus between legs. It shows where she
is, what she is doing, when her leg will finish or the bus will arrive, and
what comes next. While she rests, rides the bus or waits to take over, the
team's runner tracker stays on the map as a faded badge, showing how far the
relay has got.

## 🛠️ How it is built

The page is made with
[relay-race-tracker-web-app](https://github.com/christianjbrown/relay-race-tracker-web-app),
which is included here as the `engine` submodule. To set up a page like this
for someone you want to follow, start with the
[relay tracker's README](https://github.com/christianjbrown/relay-race-tracker-web-app#readme).
This repository is a finished example of the result.

- `config/` holds everything about Angela and the event: `config.json`,
  `schedule.json`, `route.json` (the course as lat/lng points) and her
  sticker (`avatar.png`). It is the only thing to edit.
- The `Deploy` workflow builds the page from `config/` with the engine and
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
node engine/tools/build.js --config config --out dist
npx --prefix engine sirv dist --port 8765
```

The Google Maps key in `config/config.json` is restricted by referrer to this
site and localhost:8765.
