// 1. Dibuja el sprite del objeto (la imagen del espacio)
draw_self(); 

// 2. Dibuja el texto explicativo
draw_set_font(fnt_menu);
draw_set_color(c_white);
draw_set_halign(fa_center); // Centrado

// Dibuja el texto 50 píxeles ENCIMA del centro del sprite
draw_text(x, y - 50, "SALTAR"); 

// Reset
draw_set_halign(fa_left);