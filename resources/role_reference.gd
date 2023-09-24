extends Resource

class_name RoleReference

@export var value: Role

func set_value(new_role):
	value = new_role
	changed.emit()
