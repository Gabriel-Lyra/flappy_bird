extends RigidBody2D

export var FLAP_FORCE = -340

var started = false

func _physics_process(_delta):
	if Input.is_action_just_pressed("flap"):
		if !started:
			start()
		flap()
	

func start():
	if started: return
	started = true
	gravity_scale = 10.0

func flap():
	linear_velocity.y = FLAP_FORCE
