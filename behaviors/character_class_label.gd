extends Label

const CharacterClassStringProperty = preload("res://resource_definitions/character_class.gd").CharacterClassStringProperty

@export var source: CharacterClassReference
@export var property: CharacterClassStringProperty

func _ready():
	if not source: return
	
	source.changed.connect(refresh)
	refresh()

func refresh():
	var character_class = source.value
	text = character_class.get_string(property) if character_class else "--"
