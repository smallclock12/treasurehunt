function treasurehunt:debug {msg: "Initialising firework loop"}
scoreboard players set .looppos treasurehunt.store 0
scoreboard players set .loopsuc treasurehunt.store 0

data modify storage treasurehunt:tmp loopargs set value { index: 0, call: "treasurehunt:_internal/firework_location", storage: "treasurehunt:game", key: "populated_locations" }
function treasurehunt:_internal/loop with storage treasurehunt:tmp loopargs
