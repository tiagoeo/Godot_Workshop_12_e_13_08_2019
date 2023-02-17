extends Area
var taken = false
export (PackedScene) var proximo_level

func _on_coin_body_enter(body):
	if not taken and body is preload("res://Scripts/player.gd"):
		get_node("anim").play("take")
		taken = true
# warning-ignore:return_value_discarded
		get_tree().change_scene_to(proximo_level)
