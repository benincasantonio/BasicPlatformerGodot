extends Node2D

@onready var play_button = $CanvasLayer/ButtonsContainer/Play

@onready var button_container = $CanvasLayer/ButtonsContainer
# Called when the node enters the scene tree for the first time.
func _ready():
	play_button.grab_focus()
	for child in button_container.get_children():
		child.connect("mouse_entered", Callable(_on_button_focused).bind(child))
	
	
func _on_button_focused(button):
	button.grab_focus()


func _on_quit_pressed():
	get_tree().quit()


func _on_play_pressed():
	get_tree().change_scene_to_file("res://levels/game.tscn")

