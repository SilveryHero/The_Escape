draw_set_font(fnt_font3)
draw_set_color(c_olive)
draw_set_halign(fa_left)

var _gui_width = 1280;
var _gui_height = 720;
display_set_gui_size(_gui_width, _gui_height);

var _x = _gui_width/4;
var _y = _gui_height/4;



draw_text(x, y, "Press Space to interact with objects"); 
draw_text(x, y+40, "Press Control to change how you control the characters"); 
draw_text(x, y+80, "Press Backspace to restart the level"); 
draw_text(x, y+120, "Move through the keyboard arrows"); 










