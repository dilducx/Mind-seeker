draw_self(); 
draw_set_font(Fontpista); 
draw_set_color(c_white);
draw_set_halign(fa_center); 

// Dibuja el texto 100 píxeles DEBAJO del centro del sprite
draw_text(x, y + 100, "Reúne las 3 piezas de la llave para escapar");

// Reset
draw_set_halign(fa_left);