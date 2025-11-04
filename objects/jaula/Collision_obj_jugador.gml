// Verificar si tiene 3 monedas
if (obj_jugador.monedas_recogidas >= 3) {
    // Crear la pregunta
    instance_create_layer(x, y, "Instances", obj_pregunta_final_1);
    game_paused = true; // Pausar juego
    show_debug_message("Pregunta activada");
} else {
    show_debug_message("Necesitas 3 monedas");
}