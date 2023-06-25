extends KinematicBody2D

var velocity = Vector2.ZERO
var dir = 0
var speed_x = 0
var speed_y = 0
var gravity = 9.8
const add_force = 300
var score = 0
onready var sprite = $AnimatedSprite
onready var score_label = $ScoreLabel
var health = 3
onready var life_label = $LifeLabel

var isHurt = false
onready var t = $Timer

func _ready():
	set_physics_process(true)
	score = 0
	health = 3
	life_label.call("update_lives",health)
	
	
func _physics_process(delta):
	#Movement
	dir = 0
	if Input.is_action_pressed("ui_right"):
		sprite.flip_h = false
		dir = 1
	if Input.is_action_pressed("ui_left"):
		sprite.flip_h = true
		dir = -1
	#Jumping
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		speed_y = -add_force * 2
	
	#Falling
	if not is_on_floor():
		speed_y += gravity
	
	speed_x = add_force
	velocity.x = speed_x * dir
	velocity.y = speed_y
	velocity = move_and_slide(velocity, Vector2.UP)
	
	#Animation
	if is_on_floor() and health > 0 and not isHurt:
		if velocity == Vector2.ZERO:
			sprite.animation = "Idle"
		else:
			sprite.animation = "Running"
	elif not is_on_floor() and health > 0 and not isHurt :
		if velocity.y < 0:
			sprite.animation = "Jumping"
		else:
			sprite.animation = "Falling"
	elif isHurt:
		sprite.animation = "Hurt"
		wait_for_animation()		
	if health == 0:
		sprite.animation = "Dying"
		set_physics_process(false)		

func damageTaken():
	isHurt = true
	health -= 1
	life_label.call("update_lives",health)

func add_points(points):
	score += points
	score_label.text = "Score: "+ str(score)
	
func wait_for_animation():
	yield(t, "timeout")
	isHurt = false
