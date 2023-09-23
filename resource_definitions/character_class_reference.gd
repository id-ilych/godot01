extends Resource

class_name CharacterClassReference

@export var value: CharacterClass

func set_value(new_class):
	value = new_class
	changed.emit()
