// 1. Comprueba si el jugador tiene todas las piezas (usando la variable global)
if (global.piezas_recogidas.pieza1 && global.piezas_recogidas.pieza2 && global.piezas_recogidas.pieza3) {
    
    // --- TIENE LA LLAVE COMPLETA ---
    
    // 2. Crear la pregunta correcta (la que definimos en el Create)
    instance_create_layer(x, y, "Instances", pregunta_objetivo);
    game_paused = true;
    
    // 3. Importante: Resetear la llave para el próximo nivel
    global.piezas_recogidas.pieza1 = false;
    global.piezas_recogidas.pieza2 = false;
    global.piezas_recogidas.pieza3 = false;
    
    // 4. Abrir la jaula (destruirla)
    instance_destroy();
    
} else {
    
    // --- NO TIENE LA LLAVE ---
    // ¡CAMBIO AQUÍ!
    // Usamos el controlador de pistas para mostrar el mensaje en pantalla
    if (instance_exists(obj_controlador_pistas)) {
        with (obj_controlador_pistas) {
            pista_actual = "Necesitas las 3 piezas de la llave para abrir";
            pista_temporizador = 120; // 2 segundos (60fps * 2s)
        }
    }
}