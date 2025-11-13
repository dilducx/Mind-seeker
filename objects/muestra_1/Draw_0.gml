// --- 1. Exhibición: Sprite de ANSIEDAD (Sprite10) ---
var _sprite_enemigo = Sprite10; // Ref: objects/obj_Ansiedad/obj_Ansiedad.yy

// Efecto de flote (Estética)
var _bob = sin((current_time / 400)) * 3;
draw_sprite(_sprite_enemigo, image_index, x, y + _bob);

// --- 2. Ficha de Observación ---
draw_set_font(Fontpista); // Ref: fonts/Fontpista/Fontpista.yy
draw_set_color(c_white);
draw_set_halign(fa_center); 

var _texto = "Ficha de Manifiesto: ANSIEDAD\n\n" +
             "Constructo persistente. Imposible de erradicar.\n" +
             "El sujeto debe evitar la confrontación directa.\n" +
             "Paradójicamente, usarla como impulso es su única opción de avance.";

draw_text(x, y + 60, _texto);

draw_set_halign(fa_left); // Reset