///@func transition(_destiny)
///@desc starts room transition
///@param {room} _destiny
function transition(_destiny){
	if (!instance_exists(obj_transition)) {
		var _trans = instance_create_depth(0, 0, -1000, obj_transition);
		_trans.destinyRoom = _destiny;
	}

}