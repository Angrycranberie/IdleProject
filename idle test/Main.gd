extends Control



# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var count =int(0)
var time = float(0.0)
var second = int(0)
var machine = preload("res://Autoclickers.gd")
#var clicker1 = Button.new()

# Called when the node enters the scene tree for the first time.
func _ready():
	var autoclicker = machine.new()
#	clicker1.rect_position = Vector2(500,59)
#	clicker1.text = "make something"
#	add_child(clicker1)
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(updateTime(delta)):
		count += get_node("Autoclickers").get("revenu")
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
	count = count +10
	updateMoneyCounter(str(count))
	

func updateMoneyCounter(text):
	
	get_node("MoneyCounter/Counter").set_text(text)
	
