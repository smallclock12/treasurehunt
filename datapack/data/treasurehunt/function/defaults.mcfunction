# sets .defaults_version if doesnt exist
scoreboard players add .defaults_version treasurehunt.store 0

# stop after x game ticks
execute if score .defaults_version treasurehunt.store = .num0 treasurehunt.store run scoreboard players set .game_end_ticks treasurehunt.store 6000

# how often new reward chest should be added no lower than 100 game ticks
execute if score .defaults_version treasurehunt.store = .num0 treasurehunt.store run scoreboard players set .game_reward_ticks treasurehunt.store 100

# max number of populated locations, controls clear time aswell
execute if score .defaults_version treasurehunt.store = .num0 treasurehunt.store run scoreboard players set .game_max_concurrent_rewards treasurehunt.store 4

# increment defaults_version so we know these have been set
execute if score .defaults_version treasurehunt.store = .num0 treasurehunt.store run scoreboard players add .defaults_version treasurehunt.store 1

# setup default loot_table
execute if score .defaults_version treasurehunt.store = .num1 treasurehunt.store run data modify storage treasurehunt:locations loot_table set value "treasurehunt:treasure"

# increment defaults_version so we know these have been set
execute if score .defaults_version treasurehunt.store = .num1 treasurehunt.store run scoreboard players add .defaults_version treasurehunt.store 1
