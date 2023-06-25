extends Node2D

const player = preload("res://Scenes/player.tscn")
const Level1 = preload("res://Scenes/Level1.tscn")

var LevelList:Array
func _ready():
	LevelList.append(Level1)
	#LevelList.append(Level1)
	#LevelList.append(Level1)
	
	loadLevel(LevelList[0], player)
func loadLevel(level, player):
	createElement(player,0,-1000)
	createElement(level,0,0)
	
func createElement(instance, posX, posY):
	var item = instance.instance()
	item.position = Vector2(posX,posY)
	add_child(item)
