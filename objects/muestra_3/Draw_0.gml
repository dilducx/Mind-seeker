
var _sprite_enemigo = Sprite5;

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

// --- Ajuste Estético ---
var _ancho_maximo = 350;
var _separacion_linea = 35;
var _margen = 10; 

var _sprite_altura_real