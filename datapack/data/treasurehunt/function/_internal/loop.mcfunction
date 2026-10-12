$function treasurehunt:debug {msg: "Looping $(storage) $(key) $(index)"}

$execute store success score .loopsuc treasurehunt.store run data get storage $(storage) $(key)[$(index)]
$execute if score .loopsuc treasurehunt.store = .num1 treasurehunt.store run function $(call) with storage $(storage) $(key)[$(index)]
execute if score .loopsuc treasurehunt.store = .num0 treasurehunt.store run minecraft:return fail

scoreboard players operation .looppos treasurehunt.store += .num1 treasurehunt.store
execute store result storage treasurehunt:tmp loopargs.index int 1 run scoreboard players get .looppos treasurehunt.store

function treasurehunt:_internal/loop with storage treasurehunt:tmp loopargs
