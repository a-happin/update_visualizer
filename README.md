update_visualizer
==

## Features

レールのブロックアップデート順を可視化するデータパックです。

> 参考: https://www.youtube.com/watch?v=uZyVx1TIbnY

## Usage

---

> ⚠ Visualizeタスクの実行中はブロックアップデートのあった場所にエンティティを召喚します。  
>    Update Suppression などのブロックアップデートを大量発生させる回路に対して使用すると、エンティティが大量に召喚されてワールドが激重になる可能性が高いため注意してください。(未検証)

---

### 専用アイテムの入手

```mcfunction
## 全部まとめて入手
loot give @s loot update_visualizer:tools/

# 以下個別に入手
## Visualize
loot give @s loot update_visualizer:tools/visualize

## Next Step
loot give @s loot update_visualizer:tools/next_step

## Exit
loot give @s loot update_visualizer:tools/exit
```

### Visualizeタスクの実行

`Visualize`を持って、アクティベーターレール、またはパワードレールに向かって右クリックをするとアップデート順を可視化します。(Visualizeタスクの実行)
> ⚠ Visualizeタスクの実行中はチャンクを読み込み続けてください

### Visualizeタスクの強制終了

Visualizeタスクの実行中に`Exit`を右クリックすることで強制終了できます

### ステップ実行モード

設定で`settings.interval`を0にすることでステップ実行モードになります

ステップ実行モード中は、`Next Step`を右クリックすることで次のステップに移ります。

### 設定

#### interval

1つのブロックアップデートを表示する時間を変更することができます。

- デフォルトは`4tick`です
- `0`は特別な値であり、`0`に設定するとステップ実行モードになります。
- `0` ~ `599`が利用可能です(それ以外は未検証)
- Visualizeタスクの実行中に変更することで途中から速度が変わります。(遅くしすぎた際に便利です)

```mcfunction
## intervalを4に変更する(デフォルト)
data modify storage update_visualizer: settings.interval set value 4

## intervalを1に変更する(早くする)
data modify storage update_visualizer: settings.interval set value 1

## intervalを10に変更する(遅くする)
data modify storage update_visualizer: settings.interval set value 10

## intervalをデフォルトに戻す
### (消すことで戻ります)
data remove storage update_visualizer: settings.interval
```

#### max_depth

場移りの最大の深さを制限することができます

- デフォルトは無制限です
- `0`~`2147483647`が利用可能です

```mcfunction
## max_depthを1に変更する
data modify storage update_visualizer: settings.max_depth set value 1

## max_depthをデフォルト(無制限)に戻す
data remove storage update_visualizer: settings.max_depth
```

#### strict_powered_check

場移り判定時に`block state property`の`powered`の判定も行うかどうか

- デフォルトは`false`です
- `false`: `powered`判定を無効化する(`powered`違いに場移りする)
- `true`: `powered`判定を有効化する(`powered`違いに場移りしない)

```mcfunction
## strict_powered_checkをfalseに変更する
data modify storage update_visualizer: settings.strict_powered_check set value false

## strict_powered_checkをtrueに変更する
data modify storage update_visualizer: settings.strict_powered_check set value true

## strict_powered_checkをデフォルト(false)に戻す
data remove storage update_visualizer: settings.strict_powered_check
```

#### 現在の設定を確認する

```mcfunction
data get storage update_visualizer: settings
```

## Requirement

- Minecraft JE 1.18.2
- [player_event](https://github.com/a-happin/player_event)
- [player_event.used_id](https://github.com/a-happin/player_event.used_id)

## Installation

## License
Creative Commons Zero v1.0 Universal

## Special Thanks

- [@enokilovin](https://twitter.com/enokilovin)
  - 仕様を教えてくださいました。ありがとうございます。
