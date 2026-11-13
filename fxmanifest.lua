fx_version 'cerulean'
game 'gta5'

name 'whip_media_map'
author 'Whippy'
description 'whip\'s map: the pause menu\'s 3D map, GTA\'s blip icons and the HUD radar\'s tiles.'
version '1.0.0'
lua54 'yes'

-- A MEDIA PACK: whip's pictures, videos and map live apart from whip_core, one pack per category, so a change to one
-- is downloaded again for that pack alone (whip_media_clothing_male/fxmanifest.lua says why). whip_core's
-- shared/assets_index.lua (whip_core/dev/assets_index.mjs) says which pack holds what.
whip_media_pack 'yes'   -- how whip_core's dev tools find the packs, wherever they are in [whip]

-- Saves pictures for whip_core: the same file in every media pack. Server only: players do not download it.
server_script 'server.lua'

files {
    -- GTA's blip icons for the map, by sprite id: img/blips/<id>.webp. From FiveM's docs, made by
    -- whip_core/dev/map_tiles/blip_icons.js (which also writes the names, html/js/blip-names.js).
    'img/blips/*.webp',

    -- The pause menu's map and the /whip panel's: 3D Clanker's 3D map, the 2D map's shapes on the game's heights,
    -- drawn by whip_core/html/js/map3d/map3d.js. Built by 3D Clanker's map3d build (not in this repo). The 2D map
    -- it replaced (map/gtav-map.js and the map/whip/ tiles) stays in this folder for whip_core/dev/map_tiles (the
    -- HUD radar's dark tiles, stream/ here, are baked from gtav-map.js), but is not sent.
    'map/whip-map3d.js',
}

-- stream/ (Legacy) and stream_enhanced/ (Enhanced, read instead of stream/): the HUD radar's dark tiles,
-- whipmap_<row>_<col>.ytd, made by whip_core/dev/map_tiles/minimap_tiles.js. Streamed, so never in files{}.
