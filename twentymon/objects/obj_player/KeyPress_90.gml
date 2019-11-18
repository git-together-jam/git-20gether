/// @description Interact with object ahead
if(!moving && character_can_move()) {
	var _coords = project_direction(dir, TILE_SIZE);
	var _inst = instance_position(_coords[0], _coords[1], obj_interactable);
	var _question = false;
	var _prompts = [];
	var _followups = [];
	with(_inst) {
		if(object_index == obj_npc) {
			originalDir = dir;
			currentActionTimer = alarm[0];
			dir = opposite_direction(other.dir);
			shouldApproach = false;
			if(_inst.asksQuestion) {
				_question = true;
				_prompts = _inst.prompts;
				_followups = _inst.followups;
			}
		}
	}
	if(_inst != noone) {
		if(_question) {
			dialog_ask_question(_inst.message, _prompts, _followups, _inst);
		} else {
			dialog_set_message(_inst.message, _inst);
		}
	}
}