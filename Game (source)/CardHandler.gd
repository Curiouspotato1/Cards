extends Control

#Initilize Variables & Default Values
const cardDataPath = "res://Assets/Sprites/Cards/"
var cardName = "card1"
var index = 1
var cardImg = str(cardDataPath,"card1.png")

func _ready():
	$Card.texture = load(cardImg)
