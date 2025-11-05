// Evento Draw GUI de obj_controlador_pistas

// Dibujar solo si hay una pista activa
if (pista_temporizador > 0) {
    
    // --- Posición y Fuente ---
    var _centro_x = room_width / 2;
    var _y_pos = 25;
    draw_set_font(Fontpista); // Usas Fontpista según tu último commit
    draw_set_halign(fa_center);
    
    // --- ¡ARREGLO AQUÍ! ---
    // 1. Mide el ancho del texto actual
    var _texto_ancho = string_width(pista_actual);
    
    // 2. Define un padding (espacio extra)
    var _padding = 20;
    
    // 3. Calcula las coordenadas del cuadro basado en el texto
    var _x1 = _centro_x - (_texto_ancho / 2) - _padding;
    var _y1 = _y_pos - 5;
    var _x2 = _centro_x + (_texto_ancho / 2) + _padding;
    var _y2 = _y_pos + 35;
    
    // --- Cálculo de Alpha (Desvanecimiento) ---
    var _alpha = 1;
    if (pista_temporizador < 60) { // Último segundo
        _alpha = pista_temporizador / 60;
    }

    // --- Dibujar Fondo (ahora dinámico) ---
    draw_set_color(c_black);
    draw_set_alpha(0.7 * _alpha);
    draw_rectangle(_x1, _y1, _x2, _y2, false); // Usa las nuevas coordenadas

    // --- Dibujar Texto de la Pista ---
    draw_set_color(c_yellow);
    draw_set_alpha(1 * _alpha);
    draw_text(_centro_x, _y_pos, pista_actual);
    
    // --- Resetear valores ---
    draw_set_alpha(1);
    draw_set_halign(fa_left);
    draw_set_color(c_white);
}