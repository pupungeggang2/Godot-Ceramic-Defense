extends Node

func change_scene_to(scene_path, scene_name, previous_scene):
	var scene = load(scene_path).instantiate()
	scene.name = scene_name
	get_tree().root.remove_child(previous_scene)
	get_tree().root.add_child(scene)
