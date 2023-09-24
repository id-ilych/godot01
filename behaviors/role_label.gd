extends Label

enum Property {
	Name,
	Strength,
	Agility,
	Intelligence,
}

@export var source: RoleReference
@export var property: Property

func _ready():
	if not source: return
	
	source.changed.connect(refresh)
	refresh()


func refresh():
	text = extract_text(source.value)


func extract_text(role: Role):
	if not role: return "--"
	
	match property:
		Property.Name:
			return role.name
		Property.Strength:
			return str(role.strength)
		Property.Agility:
			return str(role.agility)
		Property.Intelligence:
			return str(role.intelligence)
		_:
			print("[RoleLabel#extract] Unknown property: ", property)
			return "???"
