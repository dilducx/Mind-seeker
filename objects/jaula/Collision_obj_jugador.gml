// Verificar si tiene 3 monedas
if (global.piezas_recogidas.pieza1 && global.piezas_recogidas.pieza2 && global.piezas_recogidas.pieza3) {
    // Crear la pregunta
    instance_create_layer(x, y, "Instances", obj_pregunta_final_1);
    game_paused = true; // Pausar juego
    show_debug_message("Pregunta activada");
} else {
    show_debug_message("Necesitas 3 monedas");
}