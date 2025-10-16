// Solo ejecuta el código si el jugador NO es inmune
if (!inmune) {
    // Llama a tu script para perder vida y activar la inmunidad
    perder_vida();

    // --- CÓDIGO DE RETROCESO (KNOCKBACK) ---
    // Esto se ejecutará UNA SOLA VEZ gracias a la variable 'inmune'

    var knockback_fuerza = 7; // Ajusta esta fuerza como quieras
    var knockback_direccion;

    // Determina la dirección del retroceso
    if (other.x > x) {
        // El enemigo está a la derecha, empuja al jugador a la izquierda
        knockback_direccion = -1;
    } else {
        // El enemigo está a la izquierda, empuja al jugador a la derecha
        knockback_direccion = 1;
    }

    // Aplica la fuerza de retroceso a la velocidad horizontal (hsp)
    hsp = knockback_fuerza * knockback_direccion;

    // Opcional: aplica una pequeña fuerza vertical para un salto
    vsp = -5;
}