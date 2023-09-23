extends Label

enum Property {
	Name,
	Strength,
	Agility,
	Intelligence,
}

@export var source: CharacterClassReference
@export var property: Property

func _ready():
	if not source: return
	
	source.changed.connect(refresh)
	refresh()


func refresh():
	text = extract_text(source.value)


func extract_text(klass: CharacterClass):
	if not klass: return "--"
	
	match property:
		Property.Name:
			return klass.name
		Property.Strength:
			return str(klass.strength)
		Property.Agility:
			return str(klass.agility)
		Property.Intelligence:
			return str(klass.intelligence)
		_:
			print("[CharacterClassLable#extract] Unknown property: ", property)
			return "???"
