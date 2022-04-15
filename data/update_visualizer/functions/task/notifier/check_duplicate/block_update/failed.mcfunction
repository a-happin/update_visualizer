#> update_visualizer:task/notifier/check_duplicate/block_update/failed
#@within function update_visualizer:task/notifier/check_duplicate/block_update/

data modify storage : _ append value {}
  data modify storage : _[-1].Pos set from entity @e[type=marker,tag=update_visualizer.block_updated,distance=..0.01,limit=1] Pos
  execute store result storage : _[-1].x int 1 run data get storage : _[-1].Pos[0]
  execute store result storage : _[-1].y int 1 run data get storage : _[-1].Pos[1]
  execute store result storage : _[-1].z int 1 run data get storage : _[-1].Pos[2]
  tellraw @a [{"text": "Debug» ", "color": "green"}, "(", {"storage": ":", "nbt": "_[-1].x"}, ", ", {"storage": ":", "nbt": "_[-1].y"}, ", ", {"storage": ":", "nbt": "_[-1].z"}, ") is already block updated."]
data remove storage : _[-1]
