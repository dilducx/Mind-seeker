// --- 1. Exhibición: Sprite de ANSIEDAD (Sprite10) ---
var _sprite_enemigo = Sprite10;

// Efecto de flote (Estética)
var _bob = sin((current_time / 400)) * 3;
var _y_dinamico = y + _bob; // Posición Y base para el flote

// Dibujamos el sprite en la posición dinámica
draw_sprite(_sprite_enemigo, image_index, x, _y_dinamico);

// --- 2. Ficha de Observación (Corregida) ---
draw_set_font(Fontpista);
draw_set_color(c_white);
draw_set_halign(fa_center);

var _texto = "Ficha de Manifiesto: ANSIEDAD\n\n" +
             "Constructo persistente. Imposible de erradicar.\n" +
             "El sujeto debe evitar la confrontación directa.\n" +
             "Paradójicamente, usarla como impulso es su única opción de avance.";

// --- Ajuste Estético ---
var _ancho_maximo = 350;
var _separacion_linea = 35;
var _margen = 40; // <<--- Margen GRANDE para "separar" el texto


var _sprite_altura_real = sprite_get_height(_sprite_enemigo) * image_yscale;
var _sprite_bottom_y = _y_dinamico + (_sprite_altura_real / 2);

var _y_texto = _sprite_bottom_y + _margen;

draw_text_ext(x, _y_texto, _texto, _separacion_linea, _ancho_maximo);

draw_set_halign(fa_left); // Reset