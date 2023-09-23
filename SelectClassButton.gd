extends Button

@export var selected_class: SelectedClass
@export var character_class: CharacterClass

func _on_pressed():
	if selected_class and character_class:
		selected_class.set_character_class(character_class)
