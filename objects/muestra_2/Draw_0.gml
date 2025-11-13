// --- Exhibición: Sprite de PENSAMIENTO (Sprite7) ---
var _sprite_enemigo = Sprite7;

// --- CORRECCIÓN ---
var _bob = sin((current_time / 400)) * 3;
var _y_dinamico = y + _bob; // Usar esta Y para todo
// --- FIN CORRECCIÓN ---

draw_sprite(_sprite_enemigo, image_index, x, _y_dinamico);

// --- Ficha de Observación (Corregida) ---
draw_set_font(Fontpista);
draw_set_color(c_white);
draw_set_halign(fa_center);

var _texto = "Ficha de Manifiesto: PENSAMIENTO INTRUSIVO\n\n" +
             "Una idea violenta y volátil.\n" +
             "Se lanza contra el sujeto en un acto de auto-sabotaje.\n" +
             "Es fugaz. Si se le evade, colapsará y se destruirá solo.";

var _ancho_maximo = 350;
var _separacion_linea = 35;

// Dibujar el texto relativo a la Y dinámica
draw_text_ext(x, _y_dinamico + 60, _texto, _separacion_linea, _ancho_maximo);

draw_set_halign(fa_left); // Reset