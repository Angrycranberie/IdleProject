extends Node

class_name AutoClicker

const baseRevenu = 300
var level = int(0)
var revenu = int(0)
var cost = 600


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
	
#	pass



func _on_b_Upgrade_pressed():
	var a = int(get_parent().get_node("MoneyCounter/Counter").get_text())
	if( a > cost):
		get_parent().get_node("MoneyCounter/Counter").set_text(str(a-cost))
		if(level==0):
			get_node("b_Upgrade").set_text("upgrade")	
		level +=1
		revenu += baseRevenu
		cost *= 1.07
		get_node("l_niveau").set_text(str(level))
		get_node("l_Revenu").set_text(str(revenu))
	else :
		pass
