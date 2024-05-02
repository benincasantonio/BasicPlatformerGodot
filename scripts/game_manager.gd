extends Node2D

var _score = 0

@onready var score_text = %ScoreText

var sound = preload("res://assets/sounds/coin.wav")

func add_point():
	_score+=1
	score_text.text = "Score: {score}".format({'score': _score})
