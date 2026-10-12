# uncomment for fun:
#op eepykanna

scoreboard objectives add treasurehunt.store dummy
scoreboard players set .num0 treasurehunt.store 0
scoreboard players set .num1 treasurehunt.store 1
scoreboard players set .num20 treasurehunt.store 20
scoreboard players set .max_location treasurehunt.store 0
scoreboard players set .chestcast_limit treasurehunt.store 5

# stop after x game ticks
scoreboard players set .game_end_ticks treasurehunt.store 6000
# how often new reward chest should be added no lower than 100 game ticks
scoreboard players set .game_reward_ticks treasurehunt.store 100
# max number of populated locations, controls clear time aswell
scoreboard players set .game_max_populated_location treasurehunt.store 4
scoreboard players set .game_ticks treasurehunt.store 0
scoreboard players set .game_active treasurehunt.store 0
scoreboard players set .game_reward_counter treasurehunt.store 0

function treasurehunt:game/stop

function treasurehunt:_internal/location_loop { call: "treasurehunt:_internal/set_max_location" }
