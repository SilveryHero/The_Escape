draw_set_font(fnt_font3)
draw_set_color(c_olive)
draw_set_halign(fa_left)

var _gui_width = 1280;
var _gui_height = 720;
display_set_gui_size(_gui_width, _gui_height);

var _x = _gui_width/4;
var _y = _gui_height/4;



draw_text(x, y, "Aperte Espaco para interagir"); 
draw_text(x, y+40, "Aperte Control para trocar o controle de personagens"); 
draw_text(x, y+80, "Aperte Backspace para reiniciar a fase"); 
draw_text(x, y+120, "Movimente-se pelas setas do teclado"); 













