extends Area2D

@onready var collision_shape := $notebook
@onready var shape := collision_shape.shape as RectangleShape2D
@onready var notes := $"../Notes"
@onready var listahan := $"../Listahan"
@onready var vis = false
@onready var button = $"../Button"

func _ready():
	var epsilon : int  = 2
	var polys = []
	var collision_polygon

func _on_mouse_exited() -> void:
	if listahan.visible == true:
		vis = false
		queue_redraw()

func _on_mouse_entered() -> void:
	if listahan.visible == true:
		vis = true
		queue_redraw()

func _draw():
	if shape && vis:
		var extents = shape.extents

		# Define local-space corners of the rectangle
		var local_corners = [
			Vector2(-extents.x, -extents.y),
			Vector2(extents.x, -extents.y),
			Vector2(extents.x, extents.y),
			Vector2(-extents.x, extents.y),
			Vector2(-extents.x, -extents.y)  # close loop
		]

		# Apply the transform of the CollisionShape2D (including offset, rotation)
		var t = collision_shape.transform
		var last_point = t * local_corners[0]

		for i in range(1, local_corners.size()):
			var next_point = t * local_corners[i]
			draw_line(last_point, next_point, Color.RED, 1.0)
			last_point = next_point

func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event.is_action_pressed("enter") && vis == true:
		vis = false
		queue_redraw()
		
		listahan.visible = false
		notes.visible = true
		button.visible = false
