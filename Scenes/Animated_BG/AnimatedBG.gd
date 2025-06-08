extends DialogicBackground

func _ready():
	Dialogic.signal_event.connect(_on_dialogic_signal)

func _on_dialogic_signal(args: String):
	match args:
		"day" : 
			$Day.visible = true
			$Day.play()
			$Night.visible = false
			$Night.pause()
		"night":
			$Day.visible = false
			$Day.pause()
			$Night.visible = true
			$Night.play()
		"end_day":
			$Day.visible = false
			$Day.pause()
			$Night.visible = false
			$Night.pause()
