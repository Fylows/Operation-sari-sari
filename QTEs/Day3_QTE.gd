extends CanvasLayer

@onready var timer = $"Timer"
@onready var label = $"Label"
@onready var area = $"Area2D"
@onready var hint = $Sparkle

func _ready():
	Dialogic.signal_event.connect(_on_dialogic_signal)
	timer.timeout.connect(_on_timer_timeout)

func _on_dialogic_signal(arg: String):
	if arg == "qte1_d3":
		label.visible = true
		area.visible = true
		hint.visible = true
		hint.play()
		timer.wait_time = 5.0
		timer.start()

func _on_timer_timeout():
	label.visible = false
	hint.visible = false
	hint.pause()
	Dialogic.VAR.qte = false

func _process(delta):
	if label.visible:
		label.text = "%02d" % time_left()

func time_left():
	return int(timer.time_left) % 60
