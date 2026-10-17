# uncomment for fun:
#op eepykanna

scoreboard objectives add treasurehunt.game dummy
scoreboard objectives add treasurehunt.store dummy

# Ensure defaulted
scoreboard players set .num0 treasurehunt.store 0
scoreboard players set .num1 treasurehunt.store 1
scoreboard players set .num2 treasurehunt.store 2
scoreboard players set .num2 treasurehunt.store 3
scoreboard players set .num4 treasurehunt.store 4
scoreboard players set .num5 treasurehunt.store 5
scoreboard players set .num20 treasurehunt.store 20
scoreboard players set .chestcast_limit treasurehunt.store 20
scoreboard players set .location_editor_active treasurehunt.store 0
scoreboard players set .max_location_index treasurehunt.store 0
scoreboard players set .game_active treasurehunt.store 0
scoreboard players set .game_ticks treasurehunt.store 0
scoreboard players set .game_reward_counter treasurehunt.store 0

function treasurehunt:defaults

function treasurehunt:_internal/location_loop { call: "treasurehunt:_internal/clear_location" }
function treasurehunt:_internal/location_loop { call: "treasurehunt:_internal/set_max_location_index" }
