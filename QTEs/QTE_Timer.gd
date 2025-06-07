extends CanvasLayer

@onready var timer = $"Timer"
@onready var label = $"Label"
@onready var label_guide = $"WTD"
@onready var area = $"Area2D"
@onready var hint = $Sparkle

func _ready():
	Dialogic.signal_event.connect(_on_dialogic_signal)
	timer.timeout.connect(_on_timer_timeout)

func _on_dialogic_signal(arg: String):
	if arg == "qte1_d1":
		label.visible = true
		label_guide.visible = true		
		area.visible = true
		hint.visible = true
		hint.play()
		timer.wait_time = 5.0
		timer.start()
		
	if arg == "qte2_d1":
		label.visible = true
		area.visible = true
		hint.visible = true
		hint.play()
		timer.wait_time = 3.0
		timer.start()

func _on_timer_timeout():
	label.visible = false
	label_guide.visible = false
	area.visible = false
	hint.visible = false
	hint.pause()
	Dialogic.VAR.qte = false

func _process(delta):
	if label.visible:
		label.text = "%02d" % time_left()

func time_left():
	return int(timer.time_left) % 60
