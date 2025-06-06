extends DialogicBackground


@onready var notes := $CanvasLayer/Notes

func _ready():
	notes.visible = false
	Dialogic.timeline_ended.connect(_on_timeline_ended)

func _on_timeline_ended():
	pass
