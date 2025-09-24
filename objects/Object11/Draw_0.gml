// Fondo negro
draw_set_color(c_black);
draw_rectangle(0, 0, room_width, room_height, false);

// Texto de créditos centrado
draw_set_font(Font1);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(room_width/2, room_height/2, creditos_texto);

// Contador regresivo
draw_set_font(Font2);
draw_text(room_width/2, room_height - 50, "Cerrando el juego en: " + string(ceil(tiempo_cerrar/room_speed)) + " segundos");
draw_text(room_width/2, room_height - 30, "Presiona ESC para salir inmediatamente");