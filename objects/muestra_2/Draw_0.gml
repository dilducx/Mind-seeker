// --- 1. Exhibición: Sprite de PENSAMIENTO (Sprite5) ---
var _sprite_enemigo = Sprite7; // Ref: objects/obj_Pensamiento/obj_Pensamiento.yy

// Efecto de flote (Estética)
var _bob = sin((current_time / 400)) * 3;
draw_sprite(_sprite_enemigo, image_index, x, y + _bob);

// --- 2. Ficha de Observación ---
draw_set_font(Fontpista); // Ref: fonts/Fontpista/Fontpista.yy
draw_set_color(c_white);
draw_set_halign(fa_center); 

var _texto = "Ficha de Manifiesto: PENSAMIENTO INTRUSIVO\n\n" +
             "Una idea violenta y volátil.\n" +
             "Se lanza contra el sujeto en un acto de auto-sabotaje.\n" +
             "Es fugaz. Si se le evade, colapsará y se destruirá solo.";

draw_text(x, y + 60, _texto);

draw_set_halign(fa_left); // Reset