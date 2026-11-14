# whip_media_map

The map for [WHIP](https://github.com/WHIPFX/txAdmin-recipe): the 3D map in the pause menu and the `/whip` panel,
GTA's blip icons, and the dark tiles of the HUD radar.

It's one of WHIP's five media packs, which hold the pictures, videos and map that `whip_core` shows. They're kept apart
from whip_core so its updates stay small: a player downloads each pack once, and again only when that pack changes.

## What's in it

| Folder | What |
| --- | --- |
| `map/whip-map3d.js` | The 3D map shown in the pause menu and the `/whip` panel |
| `img/blips` | 927 blip icons, `<sprite id>.webp` |
| `stream`, `stream_enhanced` | The radar's six map tiles: `stream/` for FiveM Legacy, `stream_enhanced/` for GTA V Enhanced |
| `map/whip`, `map/gtav-map.js` | The 2D map that whip_core's map tools make the radar tiles from. Players don't download it |

## Installation

WHIP's txAdmin recipe installs it in `resources/[assets]/[media]`.

By hand, put the `whip_media_map` folder in `resources/[assets]/[media]` and make sure `server.cfg` has
`ensure [assets]`. The packs start in any order, before or after `whip_core`. If one is missing or not started,
whip_core's setup report says so: type `whipsetup` in the server console.

## License

The map and pictures are made from Grand Theft Auto V and are Rockstar Games' material, used under the Cfx.re
Creator Platform License Agreement. WHIP's licence doesn't cover them. The map's shapes in `map/` are GTA V's map
traced by [Regynate](https://gist.github.com/Regynate/01a82731994e592cbe5d7e1c1b055d33), with no licence stated. The
code (`fxmanifest.lua`, `server.lua`) is WHIP's, under the GNU LGPL 3.0 (whip_core's `LICENSE`). See `NOTICE.md`, and
whip_core's `NOTICE.md` for the full notice.

WHIP is not affiliated with, endorsed or sponsored by Rockstar Games or Take-Two Interactive.
