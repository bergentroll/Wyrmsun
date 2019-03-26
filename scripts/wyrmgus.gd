extends Wyrmgus

var wyrmgus_thread

func _ready():
	if (self.wyrmgus_thread == null):
		#replace the default pointing hand cursor with the Wyrmsun cursor as well
		Input.set_custom_mouse_cursor(load("res://graphics/cursors/dwarven/dwarven_gauntlet.png"), Input.CURSOR_POINTING_HAND, Vector2(2, 0))
		
		self.connect("time_of_day_changed", music_player, "time_of_day_changed", [], CONNECT_DEFERRED)
		
		#if the player is hitting or being hit increment the tension to our music by one
		self.connect("unit_hit", music_player, "add_tension", [1], CONNECT_DEFERRED)
		
		self.set_oaml_module(music_player)
		self.wyrmgus_thread = Thread.new()
		self.wyrmgus_thread.start(self, "run_")

#we need this function because starting a function in a new thread with Godot requires that function to take a parameter (i.e. userdata), which the run() function in Wyrmgus does not
func run_(userdata):
	self.run()
