extends Control

var achievements = []

func _ready():
	self.achievements = wyrmgus.get_achievements()
	var menu_area_node = self.find_node("menu_area")
	
	var item_x = 1
	var item_y = 1
	for achievement in self.achievements:
		if (achievement.is_hidden()):
			continue
		
		var achievement_button = load("res://scenes/icon_button.tscn").instance()
		menu_area_node.add_child(achievement_button)
		
		var graphics_file = achievement.get_icon().get_file()
		if (graphics_file.find("dlcs/") != -1):
			graphics_file = "res://" + graphics_file
		else:
			graphics_file = "res://graphics/" + graphics_file
		
		achievement_button.set_graphics(graphics_file)
		achievement_button.set_player_color(achievement.get_player_color())
		
		achievement_button.rect_position.x = 23 + 4 + (54 * item_x)
		achievement_button.rect_position.y = 10 + 4 + (36 * 1.5) + (46 * item_y)
		
		item_x = item_x + 1
		
		if (item_x > 9):
			item_x = 1
			item_y = item_y + 1