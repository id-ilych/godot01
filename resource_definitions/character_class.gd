extends Resource

class_name CharacterClass

@export var name: String = "<class_name>"
@export var strength: int = 100
@export var agility: int = 75
@export var intelligence: int = 50

enum CharacterClassStringProperty {
	Name,
	Strength,
	Agility,
	Intelligence,
}

func get_string(property: CharacterClassStringProperty):
	match property:
		CharacterClassStringProperty.Name:
			return name
		CharacterClassStringProperty.Strength:
			return str(strength)
		CharacterClassStringProperty.Agility:
			return str(agility)
		CharacterClassStringProperty.Intelligence:
			return str(intelligence)
		_:
			print("[CharacterClass#get_string] Unknown property", property)
			return "???"

