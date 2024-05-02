extends Node

@onready var background_music = get_node('/root/BackgroundMusic')

func _ready():
	if background_music and not background_music.playing:
		background_music.play()
