
draw_set_font(fnt_font1);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);


var _gui_width = 1280;
var _gui_height = 720;
display_set_gui_size(_gui_width, _gui_height);

var _x = _gui_width/2;
var _y = _gui_height/2;
var _w = (obj_story_en.boxwidth)/2;
var _h = (string_height(obj_story_en.mytext[obj_story_en.page]))*2.5;

alpha = lerp(alpha, 1, 0.10);

draw_set_alpha(alpha);
draw_rectangle_colour(_x - _w, _y - _h, _x + _w, _y + _h, c_black, c_black, c_black, c_black, false);
draw_text_ext(_x, _y, obj_story_en.mytext[obj_story_en.page], 40, obj_story_en.boxwidth); 
draw_set_alpha(1)


