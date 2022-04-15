update_visualizer
==

## Features

レールのブロックアップデート順を可視化するデータパックです。

> 参考: https://www.youtube.com/watch?v=uZyVx1TIbnY

## Usage

---

> ⚠ スコアボードなどを定義する副作用があるため、このデータパック専用のワールドを作成することを推奨します。

---

### Visualizeタスクの実行

`Visualize`を持って、アクティベーターレール、またはパワードレールに向かって右クリックをするとアップデート順を可視化します。

### 専用アイテムの入手

```mcfunction
loot give @s loot update_visualizer:visualize
loot give @s loot update_visualizer:next_step
```

### intervalの変更

1つのブロックアップデートを表示する時間を変更することができます。  

- デフォルトは`4tick`です
- `0`は特別な値であり、`0`に設定すると手動モードになります。
- `0` ~ `599`が利用可能です(それ以外は未検証)
- Visualizeタスクの実行中に変更することで途中から速度が変わります。(遅くしすぎた際に便利です)

```mcfunction
## intervalを4に変更する(デフォルト)
data modify storage update_visualizer: settings.interval set value 4

## intervalを1に変更する(早くする)
data modify storage update_visualizer: settings.interval set value 4

## intervalを10に変更する(遅くする)
data modify storage update_visualizer: settings.interval set value 10

## intervalをデフォルトに戻す
### (消すことで戻ります)
data remove storage update_visualizer: settings.interval
```

## Requirement

- Minecraft JE 1.18.2
- [player_event](https://github.com/a-happin/player_event)
- [player_event.used_id](https://github.com/a-happin/player_event.used_id)

## Installation

## License
Creative Commons Zero v1.0 Universal
