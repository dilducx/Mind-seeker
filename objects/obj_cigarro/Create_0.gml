// Duración del efecto en segundos
duracion_efecto = 30;

if (place_meeting(x, y, obj_jugador)) {
    with (other) {
        // Activar efecto en el jugador
        efecto_cigarro_activo = true;
        tiempo_cigarro_restante = duracion_efecto * game_get_speed(gamespeed_fps);
     
        // Hacerlas visibles
        platform1.visible = true;
        platform1.image_alpha = 1;
        platform2.visible = true;
        platform2.image_alpha = 1;
        
        show_debug_message("Plataformas temporales activadas y visibles");
    }
    instance_destroy();
}