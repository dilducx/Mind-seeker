// =======================
// Draw Event - personaje
// =======================

// Ajusta la escala deseada
var escala = 3; // 3 = tres veces el tamaño original

// Dibuja el sprite respetando el flip y el origen
draw_sprite_ext(
    sprite_index,   // Sprite del objeto
    image_index,    // Frame actual
    x, y,           // Posición del objeto
    image_xscale * escala, // Escala horizontal + flip
    1 * escala,     // Escala vertical
    0,              // Rotación (grados)
    c_white,        // Color
    1               // Alpha
);


var x_vidas = 20;
var y_vidas = 20;
var separacion = 20;

for (var i = 0; i < vidas; i++) {
    draw_sprite(spr_corazon, 0, x_vidas + (i * separacion), y_vidas);
}
