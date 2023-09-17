if (progress < 1.50) {
	progress += transSpeed;
}
else {
	if (room_exists(destinyRoom)) {
		room_goto(destinyRoom);
	}
}

var _gui_width = 1280;
var _gui_height = 720;
display_set_gui_size(_gui_width, _gui_height);

draw_set_alpha(progress);
draw_rectangle_color(0, 0, _gui_width, _gui_height, c_black, c_black, c_black, c_black, false);
draw_set_alpha(1);














