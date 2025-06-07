extends Button

@onready var day = "Day"+str(int(Dialogic.VAR.day))+"_timeline"

func _on_pressed() -> void:
	Dialogic.start(day)
	$"..".visible = false
