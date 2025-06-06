extends Area2D

@onready var listahan = $"../../../CanvasLayer/Listahan"
@onready var button = $"../../../CanvasLayer/Button"

func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event.is_action_pressed("enter"):
		print("hello")
		listahan.visible = true
		button.visible = true
		$"..".visible = false
	
