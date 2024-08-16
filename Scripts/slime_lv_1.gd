extends Node2D

const speed = 60
var direction = 1

@onready var ray_cast_r = $RayCastR
@onready var ray_cast_l = $RayCastL
@onready var animated_sprite_2d = $AnimatedSprite2D

func _process(delta):
	if ray_cast_r.is_colliding():
		direction = -1
		animated_sprite_2d.flip_h = true
	
	if ray_cast_l.is_colliding():
		direction = 1
		animated_sprite_2d.flip_h = false
	
	position.x += delta * speed * direction
