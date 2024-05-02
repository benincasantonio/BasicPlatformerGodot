extends Area2D

@onready var timer = $Timer

func _on_body_entered(body):
	print("You Died!")
	timer.start()
	Engine.time_scale = .4
	var collision_shape: CollisionShape2D = body.get_node("CollisionShape2D")
	if collision_shape:		
		collision_shape.queue_free()


func _on_timer_timeout():
	Engine.time_scale = 1
	get_tree().reload_current_scene()
