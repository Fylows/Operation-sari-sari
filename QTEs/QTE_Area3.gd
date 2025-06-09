extends Area2D
@onready var label = $"../Label"
@onready var area = $"."
@onready var hint = $"../Sparkle"

func _on_mouse_entered() -> void:
	print("click!")
	Dialogic.VAR.qte = true
	label.visible = false
	area.visible = false
	hint.visible = false
	Dialogic.handle_next_event()
