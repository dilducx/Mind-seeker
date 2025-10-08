// Variables
if (efecto_cigarro_activo) {
    tiempo_cigarro_restante--;  

    if (tiempo_cigarro_restante <= 0) {
        efecto_cigarro_activo = false;
        revelar_plataformas(false);
        show_debug_message("Efecto cigarro terminado");
    }
}

var hor = keyboard_check(vk_right) - keyboard_check(vk_left);
var hsp = hor * 4; // velocidad horizontal
var grounded = place_meeting(x, y + 1, plat_corto) || 
               (efecto_cigarro_activo && place_meeting(x, y + 1, obj_plataforma_invisible)); // ¡Aquí la magia!

// =======================
// Movimiento horizontal
// =======================
if (hsp != 0 && place_free(x + hsp, y)) {
    x += hsp;
}

if (hor > 0) image_xscale = 1;     // derecha
else if (hor < 0) image_xscale = -1; // izquierda

// =======================
// Salto
// =======================
if (keyboard_check_pressed(vk_space) && grounded) {
    vsp = -18;
}
// Verificar si se cayó
if (y > room_height) {
    // Respawn en posición específica
    x = spawn_x;
    y = spawn_y;
    hspeed = 0;
    vspeed = 0;
    
    // Perder vida
    vidas--;
    inmune = true;
    alarm[0] = 60;
    
    show_debug_message("Vidas restantes: " + string(vidas));
    
    // Game Over
    if (vidas <= 0) {
        morir();
    }
}

// =======================
// Gravedad
// =======================
if (!grounded) {
    vsp += 0.6; // gravedad realista
} else if (vsp > 0) {
    vsp = 0; // piso detenido
}

if (vsp != 0) {
    // Verificar colisión con plataformas invisibles (solo si el efecto está activo)
    if (efecto_cigarro_activo && vsp > 0 && place_meeting(x, y + vsp, obj_plataforma_invisible)) {
        // Encontrar la posición exacta de la plataforma
        var plat = instance_place(x, y + vsp, obj_plataforma_invisible);
        if (plat != noone) {
            y = plat.bbox_top; // Posicionar justo encima
            vsp = 0;
            grounded = true;
        }
    }
    else if (place_free(x, y + vsp)) {
        y += vsp;
    } else {
        // Ajustar hasta tocar el piso o techo
        while (vsp != 0 && place_free(x, y + sign(vsp))) {
            y += sign(vsp);
        }
        vsp = 0;
    }
}

if(instance_number(jaula) == 0){
	room_goto_next()
}

if (y > room_height + 100) {
    perder_vida();
}
