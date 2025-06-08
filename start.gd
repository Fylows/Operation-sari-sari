extends Button



func _on_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Day0/Day0.tscn")
	Dialogic.VAR.culprit = "none"
	Dialogic.VAR.qte = false
	Dialogic.VAR.day_end = false
	Dialogic.VAR.ed = 0
	Dialogic.VAR.day = 0
	Dialogic.VAR.deon_sus = 0
	Dialogic.VAR.jan_sus = 0
	Dialogic.VAR.koopa_sus = 0
	Dialogic.VAR.tam_sus = 0
	Dialogic.VAR.tom_sus = 0
