// Fondo
draw_set_alpha(0.8);
draw_set_color(c_black);
draw_rectangle(0, 0, room_width, room_height, false);
draw_set_alpha(1);

// Texto
draw_set_font(-1);
draw_set_color(c_red);
draw_set_halign(fa_center);

draw_text(room_width/2, room_height/2 - 40, "¡GAME OVER!");
draw_text(room_width/2, room_height/2, "Te quedaste sin vidas");
draw_text(room_width/2, room_height/2 + 40, "Presiona ENTER o ESPACIO para reiniciar");

// Tiempo restante
draw_set_color(c_white);
draw_text(room_width/2, room_height/2 + 80, "Reiniciando en: " + string(ceil(alarm[0]/room_speed)) + "s");