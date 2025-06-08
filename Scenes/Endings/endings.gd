extends Node2D

func _ready():
		var ed = Dialogic.VAR.ed
		print(ed)
		match ed:
			1 : Dialogic.start("ed1_timeline")
			2 : Dialogic.start("ed2_timeline")
			3 : Dialogic.start("ed3_timeline")
	
