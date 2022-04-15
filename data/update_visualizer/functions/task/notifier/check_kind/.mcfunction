#> update_visualizer:task/notifier/check_kind/
#@within function update_visualizer:task/notifier/check_remains/

## check_remainsを成功にする
data modify storage : _[-1].if.success set value 1b

data modify storage : _ append value {}
  data modify storage : _[-1].switch.case set from storage : _[-3].data.kind
  execute if data storage : _[-1].switch{case: "block_update"} run function update_visualizer:task/notifier/block_update/
  execute if data storage : _[-1].switch{case: "observer_update"} run function update_visualizer:task/notifier/observer_update/

  execute unless data storage : _[-1].if{success: 1b} run function update_visualizer:task/notifier/check_kind/failed
data remove storage : _[-1]
