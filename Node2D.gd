extends Node2D

# class member variables go here, for example:
var kunden = 0
var KUndenbestellnummmer 

var texte = [
	"xxx",
	"Ich bestelle Burger",
	"Ich bestelle Pommes",
	"Ich bestelle Cola",
	"Ich bestelle einen Wrap",
	"Ich bestelle chicken nuggets",
]
# texte[1] ====>>>> 1Ich bestelle Burger

func _ready():
	
	randomize()
	var randomzahl = randi()%5+1
	nK(randomzahl,texte[randomzahl])
	
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
func _process(delta):
	$Label2.text = str(global.coin)
	$Label3.text = str(global.kunde)
	pass
	
func _on_Button_pressed():
	if KUndenbestellnummmer==1:
		global.coin +=10
	else:
		global.coin -= 10 
	randomize()
	var randomzahl = randi()%5+1
	nK(randomzahl,texte[randomzahl])
	$Path2D.allowedToMove = true

func _on_Button2_pressed():
	if KUndenbestellnummmer==2:
		global.coin +=10
	else:
		global.coin -= 10 
	randomize()
	var randomzahl = randi()%5+1
	nK(randomzahl,texte[randomzahl])
	$Path2D.allowedToMove = true
func _on_Timer_timeout():
	print ("LOl")
	pass
func _on_Button3_pressed():
	if KUndenbestellnummmer==3:
		global.coin +=10
	else:
		global.coin -= 10 
	randomize()
	var randomzahl = randi()%5+1
	nK(randomzahl,texte[randomzahl])
	$Path2D.allowedToMove = true
func _on_Timerkunde_timeout():
	pass # replace with function body
	
func nK (randomzahl,text):
	KUndenbestellnummmer = randomzahl
	$Path2D/Panel/Label.text = text
	$Timerkunde.start()
	#print($Panel/Label.text)


func _on_Button4_pressed():
	if KUndenbestellnummmer==4:
		global.coin +=10
	else:
		global.coin -= 10 
	randomize()
	var randomzahl = randi()%5+1
	nK(randomzahl,texte[randomzahl])
	$Path2D.allowedToMove = true
	pass # replace with function body



func _on_Button5_pressed():
	if KUndenbestellnummmer==5:
		global.coin +=10
	else:
		global.coin -= 10
	randomize()
	var randomzahl = randi()%5+1
	nK(randomzahl,texte[randomzahl])
	$Path2D.allowedToMove = true
	pass # replace with function body


func _on_Settings_pressed():
	get_tree().change_scene("res://einstellungen2.tscn")
	pass # replace with function body
