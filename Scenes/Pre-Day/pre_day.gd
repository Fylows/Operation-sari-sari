extends DialogicBackground

@onready var notes := $CanvasLayer/Notes
@onready var day = str(int(Dialogic.VAR.day))
@onready var area = $CanvasLayer
@onready var start_btn = $CanvasLayer/Button

func _ready():
	Dialogic.start("preday_timeline")
	Dialogic.signal_event.connect(_on_dialogic_signal)
	const no_tom = preload("res://Assets/Items/recbook.png")	
	notes.texture = no_tom


func _on_dialogic_signal(argument: String):
	if argument == "end_day":
		area.visible = true
		start_btn.visible = true
	elif argument == "end_d5":
			const w_tom = preload("res://Assets/Items/recbook_tom.png")	
			notes.texture = w_tom
			area.visible = true
			start_btn.visible = true
		


func _on_tom_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	pass # Replace with function body.
