#> update_visualizer:task/notifier/
#@within function update_visualizer:task/find_current_notifier/

## find_current_notifierを成功にする
data modify storage : _[-1].if.success set value 1b

## 高速でアクセスするためにデータをstorageにコピーして扱う
data modify storage : _[-1].data set from entity @s data
  execute if data storage : _[-1].data.remains[-1] run function update_visualizer:task/notifier/check_remains/
data modify entity @s data set from storage : _[-1].data

## remainsが空になったら/kill
execute unless data storage : _[-1].data.remains[-1] run kill @s
