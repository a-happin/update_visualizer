#> update_visualizer:visualize/find_targeting_block/loop
#@within
#  function update_visualizer:visualize/find_targeting_block/
#  function update_visualizer:visualize/find_targeting_block/loop

execute if block ~ ~ ~ #update_visualizer:block align xyz run function update_visualizer:visualize/run/
execute unless block ~ ~ ~ #update_visualizer:block positioned ^ ^ ^0.1 if entity @s[distance=..6] run function update_visualizer:visualize/find_targeting_block/loop
