extends Node

const empty_save = {'a': 1, 'b': 2}
var save = {}

func save_data():
	var file = FileAccess.open('user://ceramic_defense_savefile.txt', FileAccess.READ)
	
	if !file:
		file = FileAccess.open('user://ceramic_defense_savefile.txt', FileAccess.WRITE)
		file.store_string(JSON.stringify(empty_save))
		file.close()
		
	file = FileAccess.open('user://ceramic_defense_savefile.txt', FileAccess.WRITE)
	file.store_string(JSON.stringify(save))
	
func load_data():
	var file = FileAccess.open('user://ceramic_defense_savefile.txt', FileAccess.READ)
	
	if !file:
		file = FileAccess.open('user://ceramic_defense_savefile.txt', FileAccess.WRITE)
		file.store_string(JSON.stringify(empty_save))
		file.close()
		
	file = FileAccess.open('user://ceramic_defense_savefile.txt', FileAccess.READ)
	save = JSON.parse_string(file.get_as_text())
	
func erase_data():
	var file = FileAccess.open('user://ceramic_defense_savefile.txt', FileAccess.READ)
	
	if !file:
		file = FileAccess.open('user://ceramic_defense_savefile.txt', FileAccess.WRITE)
		file.store_string(JSON.stringify(empty_save))
		file.close()
		
	file = FileAccess.open('user://ceramic_defense_savefile.txt', FileAccess.WRITE)
	file.store_string(JSON.stringify(empty_save))
	file.close()
