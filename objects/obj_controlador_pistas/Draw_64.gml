// Dibujar solo si hay una pista activa
if (pista_temporizador > 0) {
    
    // Calcular el centro de la pantalla
    var _centro_x = room_width / 2;
    var _y_pos = 25;
    
    // Calcular alpha (para desvanecer al final)
    var _alpha = 1;
    if (pista_temporizador < 60) { // Último segundo
        _alpha = pista_temporizador / 60;
    }

    // Dibujar fondo (similar a tu contador de cigarro)
    draw_set_font(Fontpista); // O la fuente que prefieras
    draw_set_halign(fa_center);
    
    draw_set_color(c_black);
    draw_set_alpha(0.7 * _alpha);
    draw_rectangle(_centro_x - 250, _y_pos - 5, _centro_x + 250, _y_pos + 35, false);

    // Dibujar texto de la pista
    draw_set_color(c_yellow); // Color para la pista
    draw_set_alpha(1 * _alpha);
    draw_text(_centro_x, _y_pos, pista_actual);
    
    // Resetear valores
    draw_set_alpha(1);
    draw_set_halign(fa_left);
    draw_set_color(c_white);
}