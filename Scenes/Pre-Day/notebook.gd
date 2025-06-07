extends Area2D

@onready var listahan = $"../Listahan"
@onready var button = $"../Button"
@onready var notes = $"../Notes"

func _on_input_event(_viewport: Node, event: InputEvent, _shape_idx: int) -> void:
	if event.is_action_pressed("enter"):
		listahan.visible = true
		notes.visible = false
		button.visible = true
		$".".visible = false
