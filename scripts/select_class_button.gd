extends Button

class_name SelectClassButton

@export var selected_class: ClassView
var character_class: CharacterClass

func _on_pressed():
	if selected_class and character_class:
		selected_class.set_character_class(character_class)

func set_character_class(new_class):
	character_class = new_class
	text = new_class.name
