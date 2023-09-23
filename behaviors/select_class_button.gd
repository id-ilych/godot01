extends Button

class_name SelectClassButton

@export var target: CharacterClassReference
var character_class: CharacterClass

func _on_pressed():
	if target and character_class:
		target.set_value(character_class)

func set_character_class(new_class):
	character_class = new_class
	text = new_class.name
