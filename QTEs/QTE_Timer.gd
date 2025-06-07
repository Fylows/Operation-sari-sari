@tool
extends DialogicLayoutLayer

@onready var label = $Label
@onready var label_guide = $WTD
@onready var timer = $Timer
@onready var area = $Area2D

func _ready():
	Dialogic.signal_event.connect(_on_dialogic_signal)
	timer.timeout.connect(_on_timer_timeout)

func _on_dialogic_signal(arg: String):
	if arg == "qte_start":
		label.visible = true
		label_guide.visible = true		
		area.visible = true
		timer.start()

func _on_timer_timeout():
	label.visible = false
	label_guide.visible = false
	area.visible = false
	Dialogic.VAR.qte = false

func _process(delta):
	if label.visible:
		label.text = "%02d" % time_left()

func time_left():
	return int(timer.time_left) % 60
