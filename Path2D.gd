extends Path2D

export var speed=200
var start = false
var allowedToMove = false # Allowed to Move Sagt aus ob ein Knopf gedrückt

func _process(delta):
	if start:
		# 335 => die Zahl wo er am Tresen
		if $PathFollow2D.offset < 335 or allowedToMove:
			# Bewegt sich solange bis er am Tresen ist
			$PathFollow2D.offset += speed * delta # Bewegung
		if $PathFollow2D.offset > 330:
			# Kurz vorm Tresen erscheint kommt der Text (visibility)
			$Panel.visible = true
	
	if allowedToMove:
		# Kommt hier rein wenn er etwas bestellt hat
		$Panel.visible = false
	
	if $PathFollow2D.unit_offset > 0.9:
		# Wenn er am Ende angekommen ist dann springe startpunkt und lauf wieder los
		$PathFollow2D.unit_offset = 0
		allowedToMove = false
		global.kunde += 1
	
	if global.kunde == 10:
		global.kunde = 0
		get_tree().change_scene("res://Coin.tscn")



func _on_Spielbegin_timeout():
	start = true
	global.kunde += 1
