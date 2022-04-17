#> update_visualizer:block_update/
#@within
#  function update_visualizer:visualize/run/
#  function update_visualizer:task/notifier/block_update/

execute unless entity @e[type=marker,tag=update_visualizer.block_updated,distance=..0.01] run function update_visualizer:block_update/push_notifiers/
function update_visualizer:summon/marker/block_update/
