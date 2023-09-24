extends HBoxContainer

class_name SelectRoleMenu

@export var button_template: SelectRoleButton
@export var Roles: Array[Role]

# Called when the node enters the scene tree for the first time.
func _ready():
	if Roles.is_empty(): return
	
	button_template.set_role(Roles[0])
	for role in Roles.slice(1):
		var btn = button_template.duplicate()
		btn.set_role(role)
		add_child(btn)
