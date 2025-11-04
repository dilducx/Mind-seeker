// Fondo negro semitransparente
draw_set_alpha(0.8);
draw_set_color(c_black);
draw_rectangle(0, 0, room_width, room_height, false);
draw_set_alpha(1);

// Texto de Falla
draw_set_font(Font1); // Usa tu fuente principal
draw_set_color(c_red);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var cx = room_width / 2;
var cy = room_height / 2;

// Dibuja los mensajes
draw_text(cx, cy - 60, mensaje_linea1);
draw_text(cx, cy - 20, mensaje_linea2);
draw_text(cx, cy + 20, mensaje_linea3);

// Instrucciones de reinicio
draw_set_font(Font2); // Usa tu fuente secundaria
draw_set_color(c_white);
draw_text(cx, cy + 80, "Presiona ENTER para volver al menú");
draw_text(cx, cy + 120, "Volviendo en: " + string(ceil(alarm[0]/room_speed)) + "s");

draw_set_halign(fa_left); // Resetear alineación