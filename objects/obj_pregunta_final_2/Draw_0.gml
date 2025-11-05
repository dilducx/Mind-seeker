// --- FONDO (CENTRADO CORRECTAMENTE) ---
// Dibuja el sprite usando su nuevo origen (Middle Centre) en el centro de la sala
draw_sprite(spr_fondo_pregunta, 0, room_width / 2, room_height / 2);


// --- Función Auxiliar para Dibujar Texto con Fondo ---
// Definimos esta función para no repetir código
var dibujar_texto_con_fondo = function(_font, _color, _halign, _x, _y, _text) {
    draw_set_font(_font);
    draw_set_halign(_halign);
    draw_set_valign(fa_middle); // Alinear verticalmente al medio

    // Mide el texto
    var _text_width = string_width(_text);
    var _text_height = string_height(_text); // Alto del texto
    var _padding_x = 20; // Espacio horizontal
    var _padding_y = 10; // Espacio vertical

    // Dibuja el cuadro de fondo (semitransparente)
    draw_set_color(c_black);
    draw_set_alpha(0.7); // 70% de opacidad
    draw_rectangle(
        _x - (_text_width / 2) - _padding_x, // Izquierda
        _y - (_text_height / 2) - _padding_y, // Arriba
        _x + (_text_width / 2) + _padding_x, // Derecha
        _y + (_text_height / 2) + _padding_y, // Abajo
        false // Relleno
    );
    draw_set_alpha(1); // Restaura la opacidad

    // Dibuja el texto
    draw_set_color(_color);
    draw_text(_x, _y, _text);
};


// --- DIBUJAR LA PREGUNTA ---
// (Usa la variable 'y_pregunta' que ya tienes en tu Create_0.gml)
dibujar_texto_con_fondo(Font1, c_red, fa_center, x_centro, y_pregunta, pregunta);

// --- DIBUJAR OPCIÓN 1 ---
dibujar_texto_con_fondo(Font1, c_white, fa_center, x_centro, 250, opcion1);

// --- DIBUJAR OPCIÓN 2 ---
dibujar_texto_con_fondo(Font1, c_white, fa_center, x_centro, 300, opcion2);

// --- DIBUJAR INSTRUCCIONES ---
dibujar_texto_con_fondo(Font1, c_white, fa_center, x_centro, 400, "Presiona 1 o 2 para responder");


// --- RESETEAR VALORES GLOBALES DE DIBUJO ---
draw_set_halign(fa_left); // Restablece a la izquierda
draw_set_valign(fa_top); // Restablece arriba
draw_set_color(c_white); // Restablece a blanco);