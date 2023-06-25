extends Node2D

const player = preload("res://Escenas/Player.tscn")
const Level1 = preload("res://Escenas/Level1.tscn")
const Level2 = preload("res://Escenas/Level2.tscn")
const Level3 = preload("res://Escenas/Level3.tscn")

var LevelList:Array
var LevelIndex = 0
func _ready():
	
	LevelList.append(Level1)
	LevelList.append(Level2)
	LevelList.append(Level3)
	loadLevel(LevelList[0], player)
	
func loadLevel(level,player):
	createElement(player,0,-100)
	createElement(level,0,0)

func createElement(instance, posX,posY):
	var item = instance.instance()
	item.position = Vector2(posX,posY)
	add_child(item)
	
func next_level():
	LevelIndex +=1
	loadLevel(LevelList[LevelIndex],player)
	
	
func deleteElement():
	for item in get_children():
		var hijo = get_child(0)
		remove_child(hijo)
