#> update_visualizer:summon/notifier/block_update/impl
#@within function update_visualizer:summon/notifier/block_update/

data modify storage update_visualizer: task.notifiers append value 0
execute store result storage update_visualizer: task.notifiers[-1] int 1 store result score @s update_visualizer.notifier.id run scoreboard players add $genetator update_visualizer.notifier.id 1
tag @s remove update_visualizer.init
