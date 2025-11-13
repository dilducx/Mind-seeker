// --- PROTOCOLO DE INTERVENCIÓN (Tutorial 1) ---
var _bob = sin((current_time / 400)) * 3;
var _y_dinamico = y + _bob;
// Establecer la fuente de las fichas clínicas
draw_set_font(Fontpista);
draw_set_color(c_white);

// Alineación central para la estética del bloque
draw_set_halign(fa_center); 
draw_set_valign(fa_top);

// Ficha de objetivos actualizada.
var _texto_ficha = "PROTOCOLO DE OBJETIVOS:\n\n" +
                   "El sujeto percibe 'fragmentos' (ecos de su dolor).\n\n" +
                   "El objetivo primario es la confrontación directa con el Trauma (Núcleo).\n\n" + 
                   "La elección final de nosotros es el verdadero tratamiento.";

// --- Variables de Dibujo Estético ---
var _ancho_maximo = 450; // Ancho máximo del bloque de texto
var _separacion = 35; // Separación vertical entre líneas

// Dibujar el texto con ajuste automático (draw_text_ext)
// Se dibujará centrado en la posición 'x' del objeto 'instrucion'
draw_text_ext(x, _y_dinamico, _texto_ficha, _separacion, _ancho_maximo);

// Resetear alineación
draw_set_halign(fa_left);
draw_set_valign(fa_top);