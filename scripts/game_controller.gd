extends Node

var total_coins: int = 0
var lives = 3

func decrease_health():
	lives -= 1
	print(lives)
	if (lives == 0):
		get_tree().reload_current_scene()

func coin_collected(value:int):
	total_coins += value
	EventController.emit_signal("coin_collected", total_coins)
