// 1. Guardar la pista de ESTA moneda en una variable temporal
var pista_para_mostrar = mi_pista;

// 2. Enviar la pista al controlador
// 'other' es el jugador, 'self' (o 'id') es la moneda
with (obj_controlador_pistas) {
    pista_actual = pista_para_mostrar; // <-- Ahora sí funciona
    pista_temporizador = 180; // 3 segundos (60fps * 3s)
}

// 3. Incrementar el contador del jugador
// 'other' sigue siendo el jugador
with (other) {
    monedas_recogidas++;
    show_debug_message("Monedas: " + string(monedas_recogidas));
}

// 4. Destruir la moneda
instance_destroy();