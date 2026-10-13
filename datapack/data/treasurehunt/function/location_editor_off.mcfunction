execute if score .location_editor_active treasurehunt.store = .num0 treasurehunt.store run minecraft:return run tellraw @s [{text:"Location editor is not active.", bold: true, color: "dark_red"}]

tag @a remove treasurehunt_location_editor
scoreboard players set .location_editor_active treasurehunt.store 0
tellraw @s [{text:"You are no longer editting treasure locations.", bold: true, color: "red"}]

function treasurehunt:_internal/location_editor_loop { call: "treasurehunt:_internal/location_editor_save" }

data modify storage treasurehunt:locations locations set from storage treasurehunt:locations locations_saved
data remove storage treasurehunt:locations locations_saved
data remove storage treasurehunt:locations locations_editor

function treasurehunt:_internal/location_loop { call: "treasurehunt:_internal/hide_location" }
advancement grant @s only treasurehunt:placed_chest
