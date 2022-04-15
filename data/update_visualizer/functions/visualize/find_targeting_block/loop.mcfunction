#> update_visualizer:visualize/find_targeting_block/loop
#@within
#  function update_visualizer:visualize/find_targeting_block/
#  function update_visualizer:visualize/find_targeting_block/loop

execute unless block ~ ~ ~ air run function update_visualizer:visualize/check_block/
execute if block ~ ~ ~ air positioned ^ ^ ^0.1 if entity @s[distance=..6] run function update_visualizer:visualize/find_targeting_block/loop
