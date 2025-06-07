extends DialogicBackground

@onready var notes := $CanvasLayer/Notes
@onready var day = str(int(Dialogic.VAR.day))
@onready var area = $CanvasLayer
@onready var start_btn = $CanvasLayer/Button

func _ready():
	Dialogic.start("preday_timeline")
	Dialogic.signal_event.connect(_on_dialogic_signal)

func _on_dialogic_signal(argument: String):
	if argument == "end_d"+day:
		area.visible = true
		start_btn.visible = true
