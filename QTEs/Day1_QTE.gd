extends Area2D
@onready var grp = $".."

func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event.is_action_pressed("enter"):
		print("hello")
		Dialogic.VAR.qte = true
		grp.visible = false
		Dialogic.handle_next_event()
