execute if score .game_active treasurehunt.store = .num1 treasurehunt.store run minecraft:return run tellraw @s [{text:"Cannot enter location editor while a game is ongoing.", bold: true, color: "dark_red"}]
execute if score .location_editor_active treasurehunt.store = .num1 treasurehunt.store run minecraft:return run tellraw @s [{text:"Location editor is already active.", bold: true, color: "dark_red"}]

tag @s add treasurehunt_location_editor
scoreboard players set .location_editor_active treasurehunt.store 1
tellraw @s [{text:"You are now editting treasure locations. Place chest to set a new location.", bold: true, color: "red"}]
data modify storage treasurehunt:locations locations_editor set from storage treasurehunt:locations locations
function treasurehunt:_internal/location_loop { call: "treasurehunt:_internal/show_location" }
advancement revoke @s only treasurehunt:placed_chest
