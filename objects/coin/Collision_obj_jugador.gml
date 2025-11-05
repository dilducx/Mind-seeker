// Evento Collision con obj_jugador (en obj_coin)

// 1. Guardar la pista de ESTA moneda en una variable temporal
var pista_para_mostrar = mi_pista;

// 2. Enviar la pista al controlador de pistas
if (instance_exists(obj_controlador_pistas)) {
    with (obj_controlador_pistas) {
        pista_actual = pista_para_mostrar;
        pista_temporizador = 180; // 3 segundos
    }
}

// 3. Registrar la pieza en el controlador GLOBAL
if (tipo_pieza == 1) {
    global.piezas_recogidas.pieza1 = true;
} else if (tipo_pieza == 2) {
    global.piezas_recogidas.pieza2 = true;
} else if (tipo_pieza == 3) {
    global.piezas_recogidas.pieza3 = true;
}

// 4. Destruir la pieza
instance_destroy();