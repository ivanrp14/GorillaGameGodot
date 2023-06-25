extends Label
const HEART = preload("res://Escenas/Heart.tscn")
const MAX = 3


func update_lives(health):
	var pos = 0
	while get_child_count() > 0:
		var hijo = get_child(0)
		remove_child(hijo)
	
	for i in health:
		var h = HEART.instance()
		h.position.x = pos
		pos += 150
		add_child(h)
