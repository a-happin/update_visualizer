#> update_visualizer:block_update/push_notifiers/activator_rail/shape/ascending
#@within function update_visualizer:block_update/push_notifiers/activator_rail/shape/

execute positioned ~ ~1 ~ run function update_visualizer:summon/notifier/block_update/
function update_visualizer:summon/notifier/block_update/
execute positioned ~ ~-1 ~ run function update_visualizer:summon/notifier/block_update/
function update_visualizer:summon/notifier/observer_update/
