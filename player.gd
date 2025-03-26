extends CharacterBody3D

@onready var cam: Camera3D = $Camera3D

func _process(delta: float) -> void:
    var dir = Input.get_vector("left", "right", "forward", "backward")
    velocity = Vector3(dir.x, 0, dir.y) * 10
    velocity = velocity.rotated(Vector3.UP, rotation.y)
    move_and_slide()

    var cam_dir = Input.get_axis("turn_right", "turn_left")
    rotate_y(cam_dir * delta)
