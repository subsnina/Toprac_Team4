extends CanvasLayer

signal start_game

func show_message(text):
	$Title.text = text
	$Title.show()
	$Timer.start()
	
func show_game_over():
	show_message("Game Over")
	# Wait until the MessageTimer has counted down.
	yield($Timer, "timeout")

	$Title.show()
	# Make a one-shot timer and wait for it to finish.
	yield(get_tree().create_timer(1), "timeout")
	$Button.show()

func _on_Button_pressed():
	$Title.hide()
	$Button.hide()
	emit_signal("start_game")


