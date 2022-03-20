extends "res://pawns/pawn.gd"

onready var Grid = get_parent()

func _ready():
	update_look_directtion(Vector2(1,0))

