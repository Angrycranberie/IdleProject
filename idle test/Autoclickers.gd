extends HBoxContainer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var level = int(1)
var value = int(0)


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
	
#	pass


func _on_b_Achat_pressed():
	value +=1
	get_node("l_Value").set_text(str(value))


func _on_b_Upgrade_pressed():
	level +=1
	get_node("l_niveau").set_text(str(level))
