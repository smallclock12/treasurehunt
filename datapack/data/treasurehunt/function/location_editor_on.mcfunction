tag @s add treasurehunt_location_editor
tellraw @s [{text:"You are now editting treasure locations. Place chest to set a new location.", bold: true, color: "red"}]
data modify storage treasurehunt:locations locations_editor set from storage treasurehunt:locations locations
function treasurehunt:_internal/location_loop { call: "treasurehunt:_internal/show_location" }
advancement revoke @s only treasurehunt:placed_chest
