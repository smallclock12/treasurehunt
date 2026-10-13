scoreboard players operation .game_ticks treasurehunt.store += .num20 treasurehunt.store

scoreboard players operation .game_reward_counter treasurehunt.store = .game_ticks treasurehunt.store
scoreboard players operation .game_reward_counter treasurehunt.store %= .game_reward_ticks treasurehunt.store

# roll location & reward

execute if score .game_reward_counter treasurehunt.store = .num0 treasurehunt.store run function treasurehunt:game/roll with storage treasurehunt:game

execute if score .game_reward_counter treasurehunt.store = .num0 treasurehunt.store run function treasurehunt:game/reward_tick with storage treasurehunt:game

execute if score .game_reward_counter treasurehunt.store = .num20 treasurehunt.store run function treasurehunt:game/clear_tick with storage treasurehunt:game

execute if score .game_ticks treasurehunt.store >= .game_end_ticks treasurehunt.store run function treasurehunt:game/stop
