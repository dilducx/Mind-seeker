// 'other' es obj_jugador
var jugador = other;

// No hacer nada si el jugador ya es inmune
if (jugador.inmune) {
    exit;
}

// --- El jugador recibe daño ---

// 1. Llama a la función de daño del jugador
// (Esta función ya maneja las vidas y la inmunidad)
jugador.recibir_dano(); 

// 2. Aplicar estado de knockback al jugador
jugador.estado = "knockback";
jugador.alarm[1] = 15; // Activa el temporizador de knockback

// 3. Calcular dirección del knockback
var knockback_fuerza_x = 7;
var knockback_fuerza_y = -7; // Impulso hacia arriba

if (x > jugador.x) { // Enemigo a la derecha del jugador
    jugador.hsp = -knockback_fuerza_x;
} else { // Enemigo a la izquierda
    jugador.hsp = knockback_fuerza_x;
}
jugador.vsp = knockback_fuerza_y;

// 4. Destruir al enemigo para evitar quedarse "pegado"
instance_destroy();