extends Area3D

const ROT_SPEED = 2 #동전이 매 프레임마다 회전하는 각도를 나타내는 상수
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	rotate_y(deg_to_rad(ROT_SPEED))

func _on_body_entered(body: Node3D) -> void:
	queue_free()
