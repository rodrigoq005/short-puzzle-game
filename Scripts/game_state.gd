extends Node

var collected_coins: Array[String] = []
var coin_count: int = 0


func collect_coin(coin_id: String) -> void:
	if coin_id not in collected_coins:
		collected_coins.append(coin_id)
		coin_count += 1


func is_collected(coin_id: String) -> bool:
	return coin_id in collected_coins
