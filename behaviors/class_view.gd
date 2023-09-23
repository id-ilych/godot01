extends Control

class_name ClassView

@onready var stength_value = $CenteredContainer/Stats/Strength/Value
@onready var agility_value = $CenteredContainer/Stats/Agility/Value
@onready var intelligence_value = $CenteredContainer/Stats/Intelligence/Value
@export var source: CharacterClassReference

# Called when the node enters the scene tree for the first time.
func _ready():
	source.changed.connect(refresh)
	refresh()
	
func refresh():
	var character_class = source.value
	stength_value.text = str(character_class.strength) if character_class else "--"
	agility_value.text = str(character_class.agility) if character_class else "--"
	intelligence_value.text = str(character_class.intelligence) if character_class else "--"

