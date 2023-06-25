extends Area2D

func _on_NextLevel_body_entered(body):
	if body.name == "Player":
		body.queue_free()
		var scene = get_tree().get_root().get_node("Main")
		scene.LevelIndex += 1
		scene.deleteElement()
		scene.loadLevel(scene.LevelList[scene.LevelIndex], scene.player)
		queue_free()
