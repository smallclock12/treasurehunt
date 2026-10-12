execute unless data block ~ ~-0.5 ~ Items run minecraft:return run tellraw @s {color: red, text: "Container not found, ensure you are standing ontop of a container and run the function!"}

data modify storage treasurehunt:tmp args.x set from block ~ ~-0.5 ~ x
data modify storage treasurehunt:tmp args.y set from block ~ ~-0.5 ~ y
data modify storage treasurehunt:tmp args.z set from block ~ ~-0.5 ~ z
execute as @s run function treasurehunt:_internal/add_reward with storage treasurehunt:tmp args
