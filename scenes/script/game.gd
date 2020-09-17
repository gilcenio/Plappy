extends Node2D

onready var pasaro = get_node("Pasaro")
onready var timer = get_node("Timer")
onready var label = get_node("Node2D/Control/Label")

var pontos = 0
var estado = 1

const JOGANDO = 1
const PERDENDO = 2

func _ready():
	pass
	
func kill():
	pasaro.apply_impulse(Vector2(0,0), Vector2(-1000, 0))
	get_node("AnimationPlayer").stop()
	estado = PERDENDO
	timer.start()
	get_node("SomHit").play()

func pontuar():
	pontos += 1
	label.set_text(str(pontos))
	get_node("SomScore").play()

func _on_Timer_timeout():
	get_tree().reload_current_scene()
