// Variables de movimiento
vsp = 0;
hsp = 0;
grounded = false;

// Variables del cigarro
efecto_cigarro_activo = false;
tiempo_cigarro_restante = 0;

// Coordenadas de respawn
spawn_x = 115;
spawn_y = 532;

// Otras variables del jugador
vidas = 3;
inmune = false;

monedas_recogidas = 0;


// -----------------------------
// Funciones internas del jugador
function perder_vida() {
    vidas--;
    inmune = true;
    alarm[0] = 60; // 1 segundo de inmunidad
    show_debug_message("Vidas restantes: " + string(vidas));

    if (vidas <= 0) {
        morir();
    }
}

function recibir_dano() {
    if (!inmune) {
        perder_vida();
    }
}

function morir() {
    show_debug_message("GAME OVER");
    room_restart();
}
knockback_timer = 0;
