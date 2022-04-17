#> update_visualizer:block_update/push_notifiers/powered_rail/ascending
#@within function update_visualizer:block_update/push_notifiers/powered_rail/

execute positioned ~ ~1 ~ run function update_visualizer:summon/notifier/block_update/
function update_visualizer:summon/notifier/block_update/
execute positioned ~ ~-1 ~ run function update_visualizer:summon/notifier/block_update/
function update_visualizer:summon/notifier/observer_update/
