#> update_visualizer:summon/marker/block_update/notifier
#@within function update_visualizer:summon/marker/block_update/

summon falling_block ~0.5 ~ ~0.5 {BlockState: {Name: "orange_wool"}, NoGravity: true, Glowing: true, Time: -2147483648, DropItem: false, Tags: ["update_visualizer.init", "update_visualizer.glowing_block"]}
execute positioned ~0.5 ~ ~0.5 as @e[type=falling_block,tag=update_visualizer.init,distance=0] run function update_visualizer:summon/marker/block_update/impl
