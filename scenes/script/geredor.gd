extends Position2D

onready var cano = preload("res://scenes/canos.tscn")

func _ready():
	randomize()




func _on_Timer_timeout():
	var novocano = cano.instance()
	novocano.set_position(get_position() + Vector2(0, rand_range(-500, 500)))
	get_owner().add_child(novocano)
