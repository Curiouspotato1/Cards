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

@onready var Dealer = $"../Dealer"
@onready var card1 = $"../Dealer/Card1"

func deal_cards ():
	current_deck = full_deck.duplicate() #Initilize new deck
	var dealer_deck = [_new_card(), _new_card(), _new_card(), _new_card(), _new_card()]
	
	
	
	#Assign cards to the player

func _new_card ():
	var card = current_deck[randi() % current_deck.size()] #draw a random deck
	current_deck.erase(card)
	return card
	
