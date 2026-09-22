# GorillaGameGodot

Plataformas 2D hechas en **Godot 3**. El proyecto se llama Gorila: un personaje se mueve por el nivel, recoge plátanos y pierde vidas con los pinchos.

## Qué hace

- Movimiento lateral, salto y gravedad sobre un `KinematicBody2D`.
- Marcador de plátanos y 3 vidas.
- Daño con estado de herido y un temporizador.
- Cambio de nivel (`Escenas/NextLevel.gd`).

## Stack

- Godot 3 (`config_version=4` en `project.godot`)
- GDScript
- Escena principal: `res://Escenas/Main.tscn`

## Estructura

```
project.godot
Escenas/NextLevel.gd
Scenes/MainScene.gd
Scripts/Player.gd      # movimiento, puntuación y vidas
Scripts/Main.gd
Scripts/Banana.gd
Scripts/Spikes.gd
Scripts/Health.gd
Scripts/LifeLabel.gd
```

También hay arte en `Cartoon_Jungle` y `Gorilla`, y la fuente `Some Time Later.otf`.

## Cómo ejecutarlo

1. Instala Godot 3.x.
2. Importa esta carpeta (Godot leerá `project.godot`).
3. Pulsa Play. La escena de arranque es `Escenas/Main.tscn`.

## Controles

Izquierda y derecha usan las acciones `ui_left` y `ui_right` de Godot (flechas por defecto). El salto está en `Scripts/Player.gd`.
