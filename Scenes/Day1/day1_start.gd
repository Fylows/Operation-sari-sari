extends Button
@onready var node = $"../.."

func _on_pressed() -> void:
	Dialogic.start("Day1_timeline")
	hide()
