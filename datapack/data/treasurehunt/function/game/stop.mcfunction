scoreboard players set .game_active treasurehunt.store 0
scoreboard players set .game_ticks treasurehunt.store 0

function treasurehunt:_internal/location_loop { call: "treasurehunt:_internal/clear_location" }
