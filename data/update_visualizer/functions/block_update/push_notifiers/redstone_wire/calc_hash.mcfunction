#> update_visualizer:block_update/push_notifiers/redstone_wire/calc_hash
#@within function update_visualizer:block_update/push_notifiers/redstone_wire/

#>
#@within predicate update_visualizer:block_update/push_notifiers/redstone_wire/calc_hash/xor/*
#@private
  #declare score_holder $x
  #declare score_holder $y
  #declare score_holder $z

execute store result score $x update_visualizer run data get storage : _[-1].list[-1].Pos[0]
execute store result score $y update_visualizer run data get storage : _[-1].list[-1].Pos[1]
execute store result score $z update_visualizer run data get storage : _[-1].list[-1].Pos[2]

## hash1
scoreboard players set $ update_visualizer 31
scoreboard players operation $ update_visualizer *= $y update_visualizer
scoreboard players operation $x update_visualizer += $ update_visualizer
scoreboard players set $ update_visualizer 961
scoreboard players operation $ update_visualizer *= $z update_visualizer
execute store result storage : _[-1].list[-1].hash1 int 1 store result score $z update_visualizer store result score $y update_visualizer run scoreboard players operation $x update_visualizer += $ update_visualizer


## hash2
scoreboard players operation $x update_visualizer /= #65536 update_visualizer
scoreboard players operation $y update_visualizer %= #65536 update_visualizer

### region xor
scoreboard players set $z update_visualizer 0
execute if predicate update_visualizer:block_update/push_notifiers/redstone_wire/calc_hash/xor/ run scoreboard players set $z update_visualizer -2147483648

scoreboard players operation $x update_visualizer += $x update_visualizer
scoreboard players operation $y update_visualizer += $y update_visualizer
execute if predicate update_visualizer:block_update/push_notifiers/redstone_wire/calc_hash/xor/ run scoreboard players add $z update_visualizer 1073741824

scoreboard players operation $x update_visualizer += $x update_visualizer
scoreboard players operation $y update_visualizer += $y update_visualizer
execute if predicate update_visualizer:block_update/push_notifiers/redstone_wire/calc_hash/xor/ run scoreboard players add $z update_visualizer 536870912

scoreboard players operation $x update_visualizer += $x update_visualizer
scoreboard players operation $y update_visualizer += $y update_visualizer
execute if predicate update_visualizer:block_update/push_notifiers/redstone_wire/calc_hash/xor/ run scoreboard players add $z update_visualizer 268435456

scoreboard players operation $x update_visualizer += $x update_visualizer
scoreboard players operation $y update_visualizer += $y update_visualizer
execute if predicate update_visualizer:block_update/push_notifiers/redstone_wire/calc_hash/xor/ run scoreboard players add $z update_visualizer 134217728

scoreboard players operation $x update_visualizer += $x update_visualizer
scoreboard players operation $y update_visualizer += $y update_visualizer
execute if predicate update_visualizer:block_update/push_notifiers/redstone_wire/calc_hash/xor/ run scoreboard players add $z update_visualizer 67108864

scoreboard players operation $x update_visualizer += $x update_visualizer
scoreboard players operation $y update_visualizer += $y update_visualizer
execute if predicate update_visualizer:block_update/push_notifiers/redstone_wire/calc_hash/xor/ run scoreboard players add $z update_visualizer 33554432

scoreboard players operation $x update_visualizer += $x update_visualizer
scoreboard players operation $y update_visualizer += $y update_visualizer
execute if predicate update_visualizer:block_update/push_notifiers/redstone_wire/calc_hash/xor/ run scoreboard players add $z update_visualizer 16777216

scoreboard players operation $x update_visualizer += $x update_visualizer
scoreboard players operation $y update_visualizer += $y update_visualizer
execute if predicate update_visualizer:block_update/push_notifiers/redstone_wire/calc_hash/xor/ run scoreboard players add $z update_visualizer 8388608

scoreboard players operation $x update_visualizer += $x update_visualizer
scoreboard players operation $y update_visualizer += $y update_visualizer
execute if predicate update_visualizer:block_update/push_notifiers/redstone_wire/calc_hash/xor/ run scoreboard players add $z update_visualizer 4194304

scoreboard players operation $x update_visualizer += $x update_visualizer
scoreboard players operation $y update_visualizer += $y update_visualizer
execute if predicate update_visualizer:block_update/push_notifiers/redstone_wire/calc_hash/xor/ run scoreboard players add $z update_visualizer 2097152

scoreboard players operation $x update_visualizer += $x update_visualizer
scoreboard players operation $y update_visualizer += $y update_visualizer
execute if predicate update_visualizer:block_update/push_notifiers/redstone_wire/calc_hash/xor/ run scoreboard players add $z update_visualizer 1048576

scoreboard players operation $x update_visualizer += $x update_visualizer
scoreboard players operation $y update_visualizer += $y update_visualizer
execute if predicate update_visualizer:block_update/push_notifiers/redstone_wire/calc_hash/xor/ run scoreboard players add $z update_visualizer 524288

scoreboard players operation $x update_visualizer += $x update_visualizer
scoreboard players operation $y update_visualizer += $y update_visualizer
execute if predicate update_visualizer:block_update/push_notifiers/redstone_wire/calc_hash/xor/ run scoreboard players add $z update_visualizer 262144

scoreboard players operation $x update_visualizer += $x update_visualizer
scoreboard players operation $y update_visualizer += $y update_visualizer
execute if predicate update_visualizer:block_update/push_notifiers/redstone_wire/calc_hash/xor/ run scoreboard players add $z update_visualizer 131072

scoreboard players operation $x update_visualizer += $x update_visualizer
scoreboard players operation $y update_visualizer += $y update_visualizer
execute if predicate update_visualizer:block_update/push_notifiers/redstone_wire/calc_hash/xor/ run scoreboard players add $z update_visualizer 65536

scoreboard players operation $x update_visualizer += $x update_visualizer
scoreboard players operation $y update_visualizer += $y update_visualizer
execute if predicate update_visualizer:block_update/push_notifiers/redstone_wire/calc_hash/xor/ run scoreboard players add $z update_visualizer 32768

scoreboard players operation $x update_visualizer += $x update_visualizer
scoreboard players operation $y update_visualizer += $y update_visualizer
execute if predicate update_visualizer:block_update/push_notifiers/redstone_wire/calc_hash/xor/ run scoreboard players add $z update_visualizer 16384

scoreboard players operation $x update_visualizer += $x update_visualizer
scoreboard players operation $y update_visualizer += $y update_visualizer
execute if predicate update_visualizer:block_update/push_notifiers/redstone_wire/calc_hash/xor/ run scoreboard players add $z update_visualizer 8192

scoreboard players operation $x update_visualizer += $x update_visualizer
scoreboard players operation $y update_visualizer += $y update_visualizer
execute if predicate update_visualizer:block_update/push_notifiers/redstone_wire/calc_hash/xor/ run scoreboard players add $z update_visualizer 4096

scoreboard players operation $x update_visualizer += $x update_visualizer
scoreboard players operation $y update_visualizer += $y update_visualizer
execute if predicate update_visualizer:block_update/push_notifiers/redstone_wire/calc_hash/xor/ run scoreboard players add $z update_visualizer 2048

scoreboard players operation $x update_visualizer += $x update_visualizer
scoreboard players operation $y update_visualizer += $y update_visualizer
execute if predicate update_visualizer:block_update/push_notifiers/redstone_wire/calc_hash/xor/ run scoreboard players add $z update_visualizer 1024

scoreboard players operation $x update_visualizer += $x update_visualizer
scoreboard players operation $y update_visualizer += $y update_visualizer
execute if predicate update_visualizer:block_update/push_notifiers/redstone_wire/calc_hash/xor/ run scoreboard players add $z update_visualizer 512

scoreboard players operation $x update_visualizer += $x update_visualizer
scoreboard players operation $y update_visualizer += $y update_visualizer
execute if predicate update_visualizer:block_update/push_notifiers/redstone_wire/calc_hash/xor/ run scoreboard players add $z update_visualizer 256

scoreboard players operation $x update_visualizer += $x update_visualizer
scoreboard players operation $y update_visualizer += $y update_visualizer
execute if predicate update_visualizer:block_update/push_notifiers/redstone_wire/calc_hash/xor/ run scoreboard players add $z update_visualizer 128

scoreboard players operation $x update_visualizer += $x update_visualizer
scoreboard players operation $y update_visualizer += $y update_visualizer
execute if predicate update_visualizer:block_update/push_notifiers/redstone_wire/calc_hash/xor/ run scoreboard players add $z update_visualizer 64

scoreboard players operation $x update_visualizer += $x update_visualizer
scoreboard players operation $y update_visualizer += $y update_visualizer
execute if predicate update_visualizer:block_update/push_notifiers/redstone_wire/calc_hash/xor/ run scoreboard players add $z update_visualizer 32

scoreboard players operation $x update_visualizer += $x update_visualizer
scoreboard players operation $y update_visualizer += $y update_visualizer
execute if predicate update_visualizer:block_update/push_notifiers/redstone_wire/calc_hash/xor/ run scoreboard players add $z update_visualizer 16

scoreboard players operation $x update_visualizer += $x update_visualizer
scoreboard players operation $y update_visualizer += $y update_visualizer
execute if predicate update_visualizer:block_update/push_notifiers/redstone_wire/calc_hash/xor/ run scoreboard players add $z update_visualizer 8

scoreboard players operation $x update_visualizer += $x update_visualizer
scoreboard players operation $y update_visualizer += $y update_visualizer
execute if predicate update_visualizer:block_update/push_notifiers/redstone_wire/calc_hash/xor/ run scoreboard players add $z update_visualizer 4

scoreboard players operation $x update_visualizer += $x update_visualizer
scoreboard players operation $y update_visualizer += $y update_visualizer
execute if predicate update_visualizer:block_update/push_notifiers/redstone_wire/calc_hash/xor/ run scoreboard players add $z update_visualizer 2

scoreboard players operation $x update_visualizer += $x update_visualizer
scoreboard players operation $y update_visualizer += $y update_visualizer
execute if predicate update_visualizer:block_update/push_notifiers/redstone_wire/calc_hash/xor/ run scoreboard players add $z update_visualizer 1
### endregion

execute store result storage : _[-1].list[-1].hash int 1 run scoreboard players operation $z update_visualizer %= #16 update_visualizer
