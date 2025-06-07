extends Button

@onready var day = "Day"+str(int(Dialogic.VAR.day))+"_timeline"
@onready var end = 0

func _ready() -> void:
	Dialogic.signal_event.connect(_on_dialogic_signal)

func _on_pressed() -> void:
	if end == 1:
		Dialogic.VAR.d1_e = false
		Dialogic.VAR.d2_e = false
		Dialogic.VAR.d3_e = false
		Dialogic.VAR.d4_e = false
		Dialogic.VAR.d5_e = false
		end = 0
		get_tree().change_scene_to_file("res://Scenes/"+day+"/"+day+".tscn")
	else:
		day = str(int(Dialogic.VAR.day))
		Dialogic.start("Day"+day+"_timeline")
		$"..".visible = false
	
	
func _on_dialogic_signal(arg):
	if (arg[0]+arg[1]+arg[2]) == "end":
		$".".text = "Close for today."
		end = 1
