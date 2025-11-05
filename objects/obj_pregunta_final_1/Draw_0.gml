// Fondo
draw_set_alpha(0.9);
draw_set_color(c_black);
draw_rectangle(0, 0, room_width, room_height, false);
draw_set_alpha(1);

// Pregunta
draw_set_font(Font1);
draw_set_color(c_red); 
draw_set_halign(fa_center);
draw_text(x_centro, y_pregunta, pregunta);

// Opciones
draw_set_color(c_white); 
draw_text(x_centro, 250, opcion1);
draw_text(x_centro, 300, opcion2);

// Instrucciones
draw_set_font(Font1);
draw_text(x_centro, 400, "Presiona 1 o 2 para responder");