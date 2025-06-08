extends Area2D

func _on_input_event(_viewport: Node, event: InputEvent, _shape_idx: int) -> void:
	if event.is_action_pressed("enter") && Dialogic.VAR.day == 6 && Dialogic.VAR.day_end == true:
		Dialogic.start("tom_nb")
