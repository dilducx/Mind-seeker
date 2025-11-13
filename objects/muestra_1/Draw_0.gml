// --- 1. Dibuja el Sprite (Ansiedad) ---
var _sprite_enemigo = Sprite10;

// Efecto de flote
var _bob = sin((current_time / 400)) * 3;
var _y_dinamico = y + _bob;

draw_sprite(_sprite_enemigo, image_index, x, _y_dinamico);

// --- 2. Dibuja la Ficha (Ansiedad) ---
draw_set_font(Fontpista);
draw_set_color(c_white);
draw_set_halign(fa_center);

var _texto = "Ficha de Manifiesto: ANSIEDAD\n\n" +
             "Constructo persistente. Imposible de erradicar.\n" +
             "El sujeto debe evitar la confrontación directa.\n" +
             "Paradójicamente, usarla como impulso es su única opción de avance.";

// --- Ajuste de Posición ---
// Un valor mayor separa el texto del sprite
var _y_texto_final = _y_dinamico + 80; 

draw_text_ext(x, _y_texto_final, _texto, 35, 350);

draw_set_halign(fa_left); // Reset