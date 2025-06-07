extends DialogicBackground


@onready var notes := $CanvasLayer/Notes

func _ready():
	notes.visible = false
	Dialogic.start("preday_timeline")
	
