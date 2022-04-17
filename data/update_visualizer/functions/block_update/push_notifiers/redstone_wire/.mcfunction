#> update_visualizer:block_update/push_notifiers/redstone_wire/
#@within function update_visualizer:block_update/push_notifiers/

function update_visualizer:summon/notifier/observer_update/
function update_visualizer:block_update/push_notifiers/commit

## origin
function update_visualizer:summon/notifier/block_update/
function update_visualizer:block_update/push_notifiers/redstone_wire/calc_hash

## -y
execute positioned ~ ~-1 ~ run function update_visualizer:summon/notifier/block_update/
function update_visualizer:block_update/push_notifiers/redstone_wire/calc_hash

## +y
execute positioned ~ ~1 ~ run function update_visualizer:summon/notifier/block_update/
function update_visualizer:block_update/push_notifiers/redstone_wire/calc_hash

## -z
execute positioned ~ ~ ~-1 run function update_visualizer:summon/notifier/block_update/
function update_visualizer:block_update/push_notifiers/redstone_wire/calc_hash

## +z
execute positioned ~ ~ ~1 run function update_visualizer:summon/notifier/block_update/
function update_visualizer:block_update/push_notifiers/redstone_wire/calc_hash

## -x
execute positioned ~-1 ~ ~ run function update_visualizer:summon/notifier/block_update/
function update_visualizer:block_update/push_notifiers/redstone_wire/calc_hash

## +x
execute positioned ~1 ~ ~ run function update_visualizer:summon/notifier/block_update/
function update_visualizer:block_update/push_notifiers/redstone_wire/calc_hash

## sort ascend by hash
function update_visualizer:_impl/sort/ascend

function update_visualizer:block_update/push_notifiers/commit
