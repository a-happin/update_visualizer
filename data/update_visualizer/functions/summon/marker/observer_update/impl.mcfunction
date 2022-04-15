#> update_visualizer:summon/marker/observer_update/impl
#@within function update_visualizer:summon/marker/observer_update/

## calc $time and set nbt
scoreboard players set $time update_visualizer 4
execute if data storage update_visualizer: settings.interval store result score $time update_visualizer run data get storage update_visualizer: settings.interval
execute if score $time update_visualizer matches ..-1 run scoreboard players set $time update_visualizer 0
scoreboard players set $ update_visualizer 600
execute if score $time update_visualizer matches 1.. store result entity @s Time int 1 run scoreboard players operation $ update_visualizer -= $time update_visualizer

## team
team join update_visualizer.observer_update @s

## reset
tag @s remove update_visualizer.init
