extends Area2D
@onready var label = $"../Label"
@onready var label_guide = $"../WTD"
@onready var area = $"."
@onready var hint = $"../Sparkle"

func _on_mouse_entered() -> void:
	Dialogic.VAR.qte = true
	label.visible = false
	label_guide.visible = false
	area.visible = false
	hint.visible = false
	Dialogic.handle_next_event()
