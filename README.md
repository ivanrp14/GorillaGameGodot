# GorillaGameGodot

A 2D platformer made in **Godot 3**. The project is named Gorila: a character moves through the level, collects bananas, and loses lives on spikes.

## What it does

- Horizontal movement, jump, and gravity on a `KinematicBody2D`.
- Banana score and 3 lives.
- A hurt state with a timer.
- Level change (`Escenas/NextLevel.gd`).

## Stack

- Godot 3 (`config_version=4` in `project.godot`)
- GDScript
- Main scene: `res://Escenas/Main.tscn`

## Layout

```
project.godot
Escenas/NextLevel.gd
Scenes/MainScene.gd
Scripts/Player.gd      # movement, score, and lives
Scripts/Main.gd
Scripts/Banana.gd
Scripts/Spikes.gd
Scripts/Health.gd
Scripts/LifeLabel.gd
```

Art also lives in `Cartoon_Jungle` and `Gorilla`, plus the `Some Time Later.otf` font.

## How to run

1. Install Godot 3.x.
2. Import this folder (Godot will read `project.godot`).
3. Press Play. The startup scene is `Escenas/Main.tscn`.

## Controls

Left and right use Godot's `ui_left` and `ui_right` actions (arrow keys by default). The jump is in `Scripts/Player.gd`.
