function treasurehunt:debug {msg: "Found chest!!!"}

data modify storage treasurehunt:tmp found_chest.x set from block ~ ~ ~ x
data modify storage treasurehunt:tmp found_chest.y set from block ~ ~ ~ y
data modify storage treasurehunt:tmp found_chest.z set from block ~ ~ ~ z
execute if block ~ ~ ~ chest[facing=east] run data modify storage treasurehunt:tmp found_chest.rot set value "east"
execute if block ~ ~ ~ chest[facing=north] run data modify storage treasurehunt:tmp found_chest.rot set value "north"
execute if block ~ ~ ~ chest[facing=south] run data modify storage treasurehunt:tmp found_chest.rot set value "south"
execute if block ~ ~ ~ chest[facing=west] run data modify storage treasurehunt:tmp found_chest.rot set value "west"

function treasurehunt:_internal/add_location with storage treasurehunt:tmp found_chest
