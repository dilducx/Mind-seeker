// --- 1. DIBUJAR EL SPRITE ---

// Efecto de flote (simple)
var _bob = sin((current_time / 400)) * 3;
var _y_dinamico = y + _bob;

// Dibuja el sprite (la llave)
draw_sprite(sprite_index, image_index, x, _y_dinamico);


// --- 2. DIBUJAR EL TEXTO ---

// Configura la fuente, color y alineación
draw_set_font(Fontpista);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_top);

// Texto más corto y directo (menos cargado)
var _texto = "FICHA DE FRAGMENTO:\n\n" +
             "El sujeto lo confunde con una 'llave'.\n" +
             "Es un eco de su dolor, no una salida.";

// --- Ajustes de posición y separación ---
var _ancho_maximo = 300; // Ancho del texto
var _separacion = 30;    // Espacio entre líneas

// --- Cálculo de la posición Y del texto ---
// (Asumo que el sprite tiene origen central)
var _sprite_media_altura = (sprite_get_height(sprite_index) * image_yscale) / 2;
var _sprite_borde_abajo = _y_dinamico + _sprite_media_altura;

// Posición final del texto
var _y_texto = _sprite_borde_abajo + _separacion;

// Dibuja el texto con ajuste automático
draw_text_ext(x, _y_texto, _texto, _separacion, _ancho_maximo);

// Reinicia la alineación
draw_set_halign(fa_left);
draw_set_valign(fa_top);