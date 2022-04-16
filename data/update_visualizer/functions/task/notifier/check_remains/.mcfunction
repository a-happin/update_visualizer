#> update_visualizer:task/notifier/check_remains/
#@within function update_visualizer:task/notifier/

data modify storage : _ append value {}
  data modify storage : _[-1].switch.case set from storage : _[-2].data.remains[-1]
  data remove storage : _[-2].data.remains[-1]

  ## データが無くなったらpop
  ## NOTE: 追加する前にpopしないとバグる(それはそう)
  execute unless data storage : _[-2].data.remains[-1] run data remove storage update_visualizer: task.notifiers[-1]

  execute if data storage : _[-1].switch{case: "-x"} positioned ~-1 ~ ~ run function update_visualizer:task/notifier/check_kind/
  execute if data storage : _[-1].switch{case: "+x"} positioned ~1 ~ ~ run function update_visualizer:task/notifier/check_kind/
  execute if data storage : _[-1].switch{case: "-y"} positioned ~ ~-1 ~ run function update_visualizer:task/notifier/check_kind/
  execute if data storage : _[-1].switch{case: "+y"} positioned ~ ~1 ~ run function update_visualizer:task/notifier/check_kind/
  execute if data storage : _[-1].switch{case: "-z"} positioned ~ ~ ~-1 run function update_visualizer:task/notifier/check_kind/
  execute if data storage : _[-1].switch{case: "+z"} positioned ~ ~ ~1 run function update_visualizer:task/notifier/check_kind/

  execute unless data storage : _[-1].if{success: 1b} run function update_visualizer:task/notifier/check_remains/failed
data remove storage : _[-1]
