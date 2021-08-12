extends Node

func _ready():
	new_game()
	

func hideRedBlueButtons():
	$MarginContainer/VBoxContainer/HBoxContainer/Red.hide()
	$MarginContainer/VBoxContainer/HBoxContainer/Blue.hide()
	$MarginContainer/VBoxContainer/HBoxContainer/Again.show()

func new_game():
	$MarginContainer/VBoxContainer/HBoxContainer/Red.show()
	$MarginContainer/VBoxContainer/HBoxContainer/Blue.show()
	$MarginContainer/VBoxContainer/HBoxContainer/Again.hide()
	show_message()
	
func show_message(text = "Примешь синюю таблетку — и сказке конец. \nТы проснешься в своей постели и поверишь, что это был сон. \nПримешь красную таблетку — войдешь в страну чудес. Я покажу тебе, глубока ли кроличья нора."):
	$MarginContainer/VBoxContainer/Message.text = str(text)

func _on_Red_pressed():
	hideRedBlueButtons()
	show_message("Примешь красную таблетку — войдешь в страну чудес. Я покажу тебе, глубока ли кроличья нора.")


func _on_Blue_pressed():
	hideRedBlueButtons()
	show_message("Сказке конец. \nТы проснешься в своей постели и поверишь, что это был сон.")


func _on_Again_pressed():
	new_game()
