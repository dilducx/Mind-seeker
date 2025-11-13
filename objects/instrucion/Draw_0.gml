// Este objeto SÓLO dibujará el objetivo
draw_set_font(fnt_menu);
draw_set_color(c_white);
draw_set_halign(fa_left); 

// Dibuja el texto en la POSICIÓN (x, y) donde pongas el objeto
draw_text(x, y, "OBJETIVO: conseguir las piezas de la llave,");
draw_text(x, y + 20, "abrir el trauma y elegir el metodo correcto");
draw_text(x, y + 40, "para tratar el dolor del paciente");