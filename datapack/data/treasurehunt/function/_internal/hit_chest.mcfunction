function treasurehunt:debug {msg: "Found chest!!!"}
minecraft:summon minecraft:firework_rocket ~ ~ ~ {Life:0, LifeTime: 20, FireworksItem:{id:"minecraft:firework_rocket",components:{"minecraft:fireworks":{flight_duration:20,explosions:[{shape:"small_ball",colors:[I;3887386,4312372],fade_colors:[I;14602026,2437522],has_trail:true,has_twinkle:false}]}}}}

data modify storage treasurehunt:tmp found_chest.x set from block ~ ~ ~ x
data modify storage treasurehunt:tmp found_chest.y set from block ~ ~ ~ y
data modify storage treasurehunt:tmp found_chest.z set from block ~ ~ ~ z
execute if block ~ ~ ~ chest[facing=east] run data modify storage treasurehunt:tmp found_chest.rot set value "east"
execute if block ~ ~ ~ chest[facing=north] run data modify storage treasurehunt:tmp found_chest.rot set value "north"
execute if block ~ ~ ~ chest[facing=south] run data modify storage treasurehunt:tmp found_chest.rot set value "south"
execute if block ~ ~ ~ chest[facing=west] run data modify storage treasurehunt:tmp found_chest.rot set value "west"

function treasurehunt:_internal/add_location with storage treasurehunt:tmp found_chest
