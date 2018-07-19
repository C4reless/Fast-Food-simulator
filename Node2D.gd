extends Node2D

# class member variables go here, for example:
var kunden = 0
func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
func _process(delta):
	$Label2.text = str(global.coin)
	$Label3.text = str(kunden)
	pass
	
func _on_Button_pressed():
	global.coin +=10
func _on_Button2_pressed():
	$Timer.start()
	
func _on_Timer_timeout():
	print ("LOl")
	pass
func _on_Button3_pressed():
	global.coin +=10
	kunden +=10
