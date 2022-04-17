#> update_visualizer:summon/notifier/block_update/
#@within function update_visualizer:block_update/**

summon marker ~ ~ ~ {Tags: ["update_visualizer", "update_visualizer.notifier", "update_visualizer.init"], data: {kind: "block_update", remains: [+z,-z,+y,-y,+x,-x]}}
execute as @e[type=marker,tag=update_visualizer.init,distance=..0.01] run function update_visualizer:summon/notifier/block_update/impl
