// --- 1. Exhibición: Sprite de TRAUMA (Sprite19) ---
var _sprite_enemigo = Sprite5; // Ref: sprites/Sprite19/Sprite19.yy

// Efecto de flote (Estética)
var _bob = sin((current_time / 400)) * 3;
draw_sprite(_sprite_enemigo, image_index, x, y + _bob);

// --- 2. Ficha de Observación ---
draw_set_font(Fontpista); // Ref: fonts/Fontpista/Fontpista.yy
draw_set_color(c_white);
draw_set_halign(fa_center); 

var _texto = "Ficha de Manifiesto: EL TRAUMA (Núcleo)\n\n" +
             "El origen. Está quieto, denso... esperando.\n" +
             "A diferencia de las otras sombras, no ataca.\n" +
             "El sujeto cree que la confrontación es la cura. Dejemos que proceda.";

draw_text(x, y + 60, _texto);

draw_set_halign(fa_left); // Reset