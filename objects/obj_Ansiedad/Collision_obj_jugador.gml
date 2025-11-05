// 'other' es obj_jugador
var jugador = other;

// No hacer nada si el jugador ya es inmune
if (jugador.inmune) {
    exit;
}

// 1. Revisar si el jugador está cayendo SOBRE el enemigo
var is_stomp = (jugador.vsp > 0) && (jugador.bbox_bottom < (bbox_top + 15));

if (is_stomp) {
    
    // --- ACCIÓN DE PISOTÓN ---
    
    // ¡¡AQUÍ ESTÁ EL ARREGLO!!
    // Movemos al jugador 1 píxel hacia arriba ANTES de rebotar.
    // Esto lo "despega" del enemigo y evita que el Step cancele el rebote.
    jugador.y -= 1; 
    
    // 1. Hacer rebotar al jugador
    jugador.vsp = -10; // Fuerza del rebote
    
    // 2. Hacer que el enemigo se gire
    dir *= -1;

} else {
    
    // --- ACCIÓN DE GOLPE NORMAL (LADO O ABAJO) ---
    
    // 1. Llama a la función de daño del jugador
    jugador.recibir_dano(); 

    // 2. Aplicar estado de knockback al jugador
    jugador.estado = "knockback";
    jugador.alarm[1] = 15; // Activa el temporizador de knockback

    // 3. Calcular dirección del knockback
    var knockback_fuerza_x = 7;
    var knockback_fuerza_y = -7; 

    if (x > jugador.x) { 
        jugador.hsp = -knockback_fuerza_x;
    } else {
        jugador.hsp = knockback_fuerza_x;
    }
    jugador.vsp = knockback_fuerza_y;

    // 4. Hacer que el enemigo se gire
    dir *= -1;
}