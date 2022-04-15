#> update_visualizer:block_update/powered_rail/ascending
#@within function update_visualizer:block_update/powered_rail/

## 逆順にappend

function update_visualizer:summon/notifier/observer_update/
execute positioned ~ ~-1 ~ run function update_visualizer:summon/notifier/block_update/
function update_visualizer:summon/notifier/block_update/
execute positioned ~ ~1 ~ run function update_visualizer:summon/notifier/block_update/
