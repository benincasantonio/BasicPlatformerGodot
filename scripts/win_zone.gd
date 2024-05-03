extends Area2D

@onready var win_label = %WinLabel
func _on_body_entered(body):
	win_label.visible = true
	
