#> update_visualizer:block_update/push_notifiers/redstone_wire/
#@within function update_visualizer:block_update/push_notifiers/redstone_wire/check_powered/

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
execute if data storage update_visualizer: settings{debug: 1b} run tellraw @a [{"text": "Debug» ", "color": "green"}, "update_visualizer:block_update/push_notifiers/redstone_wire/» ", {"storage": ":", "nbt": "_[-1].list"}]

function update_visualizer:block_update/push_notifiers/commit

function update_visualizer:summon/notifier/observer_update/
function update_visualizer:block_update/push_notifiers/commit
