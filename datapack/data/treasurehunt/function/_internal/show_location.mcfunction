$function treasurehunt:debug { msg: "Show Loc called $(x) $(y) $(z)" }
$setblock $(x) $(y) $(z) minecraft:chest
$summon minecraft:egg $(x) $(y) $(z) {Glowing:true,Motion:[0,0,0],NoGravity:true,Tags:["treasurehuntlocmarker"]}
$particle minecraft:firework $(x) $(y) $(z) 0 1 0 0.1 10
