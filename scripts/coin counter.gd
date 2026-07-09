extends CanvasLayer

@onready var coin_label: Label = $CoinLabel

var coins := 0

func add_coin():
	coins += 1
	coin_label.text = "Coins: " + str(coins)
