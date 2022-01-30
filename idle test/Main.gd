extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var count =int(0)
var time = float(0.0)
var second = int(0)


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(updateTime(delta)):
		count += get_node("Autoclickers").get("value")
		updateMoneyCounter(str(count))

func updateTime(delta):
	get_node("Time/Counter").set_text(str(time))
	second += delta
	if(second > 1):
		time +=1
		second = 0
		return true
	else :
		return false

func _on_Clicker_pressed():
	count = count +1
	updateMoneyCounter(str(count))
	

func updateMoneyCounter(text):
	get_node("MoneyCounter/Counter").set_text(text)
