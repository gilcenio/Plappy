extends Node2D

export var vel = -400
var cena

func _ready():
	cena = get_tree().get_current_scene()
	set_process(true)

func _process(delta):
	if cena.estado == cena.JOGANDO:
		set_position(get_position() + Vector2(vel * delta, 0))
	
	if get_position().x < -400:
		queue_free()


func _on_Area2D_body_entered(body):
	if body.get_name() == "Pasaro":
		cena.kill()


func _on_Ponto_body_entered(_body):
	cena.pontuar()
