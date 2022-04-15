#> update_visualizer:summon/notifier/observer_update/
#@within function update_visualizer:block_update/**

summon marker ~ ~ ~ {Tags: ["update_visualizer.notifier", "update_visualizer.init"], data: {kind: "observer_update", remains: [+y,-y,+z,-z,+x,-x]}}
execute as @e[type=marker,tag=update_visualizer.init,distance=..0.01] run function update_visualizer:summon/notifier/observer_update/impl
