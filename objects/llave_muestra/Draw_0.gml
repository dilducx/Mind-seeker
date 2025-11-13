// 1. Dibuja el sprite de la llave
draw_self(); 

// 2. Dibuja el texto explicativo
draw_set_font(Fontpista); // Uso la otra fuente para variar
draw_set_color(c_white);
draw_set_halign(fa_center); 

// Dibuja el texto 100 píxeles DEBAJO del centro del sprite
draw_text(x, y + 100, "Reúne las 3 piezas de la llave para escapar");

// Reset
draw_set_halign(fa_left);