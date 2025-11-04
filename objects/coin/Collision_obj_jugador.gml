// 1. Enviar la pista al controlador
// 'other' es el jugador, 'self' (o 'id') es la moneda
with (obj_controlador_pistas) {
    pista_actual = mi_pista;
    pista_temporizador = 180; // 3 segundos (60fps * 3s)
}

// 2. Incrementar el contador del jugador
// 'other' sigue siendo el jugador
with (other) {
    monedas_recogidas++;
    show_debug_message("Monedas: " + string(monedas_recogidas));
}

// 3. Destruir la moneda
instance_destroy();