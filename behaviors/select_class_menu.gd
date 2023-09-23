extends HBoxContainer

class_name SelectClassMenu

@export var button_template: SelectClassButton
@export var classes: Array[CharacterClass]

# Called when the node enters the scene tree for the first time.
func _ready():
	if classes.is_empty(): return
	
	button_template.set_character_class(classes[0])
	for klass in classes.slice(1):
		var btn = button_template.duplicate()
		btn.set_character_class(klass)
		add_child(btn)
