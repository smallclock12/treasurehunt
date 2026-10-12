$function treasurehunt:debug {msg: "Initialising reward loop with call $(call)"}
scoreboard players set .looppos treasurehunt.store 0
scoreboard players set .loopsuc treasurehunt.store 0

$data modify storage treasurehunt:tmp loopargs set value { index: 0, call: "$(call)", storage: "treasurehunt:rewards", key: "defaults" }
function treasurehunt:_internal/loop with storage treasurehunt:tmp loopargs
