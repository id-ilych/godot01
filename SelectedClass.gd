extends Control

class_name SelectedClass

@onready var stength_value = $CenteredContainer/Stats/Strength/Value
@onready var agility_value = $CenteredContainer/Stats/Agility/Value
@onready var intelligence_value = $CenteredContainer/Stats/Intelligence/Value

@export var character_class: CharacterClass = null

# Called when the node enters the scene tree for the first time.
func _ready():
	refresh()


func set_character_class(new_class):
	character_class = new_class
	refresh()

	
func refresh():
	stength_value.text = str(character_class.strength) if character_class else "--"
	agility_value.text = str(character_class.agility) if character_class else "--"
	intelligence_value.text = str(character_class.intelligence) if character_class else "--"

