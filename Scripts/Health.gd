extends Label
const heart = preload("res://Scenes/Heart.tscn")
var maxHealth = 3
var health = 5


func _ready():
	update_heart_display()

func update_heart_display():
	var pos = 0
	for i in (health):
		var h = heart.instance()
		h.position.x = pos
		pos += 150
		self.add_child(h)
		
