extends Node2D

const UIArea = {
	'button_back': [1160, 40, 80, 80]
}

func _ready():
	pass
	
func _process(delta: float):
	handle_input()
	
func handle_input():
	if Input.is_action_just_released('mouse_left'):
		var mouse = get_viewport().get_mouse_position()
		if Var.menu == false:
			if Var.state == '':
				if FPhysics.point_inside_rect(mouse, UIArea['button_back']):
					Game.change_scene_to('res://Scene/Title.tscn', 'Title', self)
