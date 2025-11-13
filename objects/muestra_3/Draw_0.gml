// --- Exhibición: Sprite de TRAUMA (Sprite5) ---
var _sprite_enemigo = Sprite5;

// Efecto de flote (Estética)
var _bob = sin((current_time / 400)) * 3;
var _y_dinamico = y + _bob;

draw_sprite(_sprite_enemigo, image_index, x, _y_dinamico);

draw_set_font(Fontpista);
draw_set_color(c_white);
draw_set_halign(fa_center);

var _texto = "Ficha de Manifiesto: EL TRAUMA (Núcleo)\n\n" +
             "El origen. Está quieto, denso... esperando.\n" +
             "A diferencia de las otras sombras, no ataca.\n" +
             "El sujeto cree que la confrontación es la cura. Dejemos que proceda.";

// --- Variables de Ajuste Estético ---
var _ancho_maximo = 350; // Ancho máximo del texto
var _separacion_linea = 35; // Espacio vertical entre líneas
var _margen_superior_texto = 2; // Espacio entre sprite y texto


var _sprite_bottom_y = _y_dinamico + (sprite_get_height(_sprite_enemigo) * image_yscale);

var _y_texto = _sprite_bottom_y + _margen_superior_texto;

draw_text_ext(x, _y_texto, _texto, _separacion_linea, _ancho_maximo);

draw_set_halign(fa_left); // Reset