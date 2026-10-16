# sets .defaults_version if doesnt exist
scoreboard players add .defaults_version treasurehunt.store 0

# stop after x game ticks
execute if score .defaults_version treasurehunt.store < .num1 treasurehunt.store run scoreboard players set .game_end_ticks treasurehunt.store 6000

# how often new reward chest should be added no lower than 100 game ticks
execute if score .defaults_version treasurehunt.store < .num1 treasurehunt.store run scoreboard players set .game_reward_ticks treasurehunt.store 100

# max number of populated locations, controls clear time aswell
execute if score .defaults_version treasurehunt.store < .num1 treasurehunt.store run scoreboard players set .game_max_concurrent_rewards treasurehunt.store 4

scoreboard players add .defaults_version treasurehunt.store 1
