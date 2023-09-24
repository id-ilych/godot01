extends Button

class_name SelectRoleButton

@export var target: RoleReference
var role: Role

func _ready():
	pressed.connect(_on_pressed)
	if target: target.changed.connect(refresh)
	refresh()

func _on_pressed():
	if target and role:
		target.set_value(role)

func set_role(new_role):
	role = new_role
	text = new_role.name
	refresh()

func refresh():
	var selected = target and target.value == role
	button_pressed = selected
