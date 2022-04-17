#> update_visualizer:block_update/push_notifiers/commit
#@within function update_visualizer:block_update/push_notifiers/**

data modify storage update_visualizer: task.notifiers append from storage : _[-1].list[-1].id
data remove storage : _[-1].list[-1]
execute if data storage : _[-1].list[-1] run function update_visualizer:block_update/push_notifiers/commit
