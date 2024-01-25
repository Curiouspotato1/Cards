#Script to help deal with the games deck
extends Node

var full_deck = [
	"CA", "C2", "C3", "C4", "C5", "C6", "C7", "C8", "C9", "C10", "CJ", "CQ", "CK",
	"DA", "D2", "D3", "D4", "D5", "D6", "D7", "D8", "D9", "D10", "DJ", "DQ", "DK",
	"HA", "H2", "H3", "H4", "H5", "H6", "H7", "H8", "H9", "H10", "HJ", "HQ", "HK",
	"SA", "S2", "S3", "S4", "S5", "S6", "S7", "S8", "S9", "S10", "SJ", "SQ", "SK",
	#"JOKER" -> Not currently in use
]

var current_deck = []
var current_deck = full_deck.duplicate()
const cardPath = "res://Assets/Sprites/Cards/"

@onready var Dealer = $"../Dealer"
@onready var card1 = $"../Dealer/Card1"
@onready var card2 = $"../Dealer/Card2"
@onready var card3 = $"../Dealer/Card3"
@onready var card4 = $"../Dealer/Card4"
@onready var card5 = $"../Dealer/Card5"
func create_deck():
	var current_deck = full_deck.duplicate()
	return current_deck

func deal_cards ():
	var dealer_deck = [_new_card(), _new_card(), _new_card(), _new_card(), _new_card()]
	#Set Cards
	card1.set_texture(load(str(cardPath,dealer_deck[0],".png")))
	card2.set_texture(load(str(cardPath,dealer_deck[1],".png")))
	card3.set_texture(load(str(cardPath,dealer_deck[2],".png")))
	card4.set_texture(load(str(cardPath,dealer_deck[3],".png")))
	card5.set_texture(load(str(cardPath,dealer_deck[4],".png")))

func _new_card ():
	var card = current_deck[randi() % current_deck.size()] #draw a random deck
	current_deck.erase(card)
	return card
	
func _ready ():
	create_deck()
	deal_cards()
	
func _input(ev):
	if Input.is_key_pressed(KEY_R):
		deal_cards()
