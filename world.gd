extends Node3D

@onready var player: CharacterBody3D = $Player

@onready var portal_one: MeshInstance3D = $PortalOne
@onready var portal_two: MeshInstance3D = $PortalTwo
@onready var cam_one: Camera3D = %CamOne
@onready var cam_two: Camera3D = %CamTwo

func _process(_delta: float) -> void:
    var m = portal_two.global_transform * portal_one.global_transform.inverse() * player.cam.global_transform
    cam_one.global_transform = m

    var n = portal_one.global_transform * portal_two.global_transform.inverse() * player.cam.global_transform
    cam_two.global_transform = n

    #DebugDraw3D.draw_camera_frustum(cam_one, Color.ORANGE)
    #DebugDraw3D.draw_camera_frustum(cam_two, Color.PURPLE)
