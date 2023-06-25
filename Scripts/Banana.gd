extends Area2D



func _on_Banana_body_entered(body):
	if body.name == "Player":
		queue_free()
		body.call("add_points",100)
		
