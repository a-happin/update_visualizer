#> update_visualizer:summon/notifier/observer_update/impl
#@within function update_visualizer:summon/notifier/observer_update/

data modify storage : _[-1].list append value {}
execute store result storage : _[-1].list[-1].id int 1 store result score @s update_visualizer.notifier.id run scoreboard players add $generator update_visualizer.notifier.id 1
data modify storage : _[-1].list[-1].Pos set from entity @s Pos
execute store result score @s update_visualizer.depth run data get storage : _[-1].depth
tag @s remove update_visualizer.init
