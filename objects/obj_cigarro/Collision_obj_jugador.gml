//colision
with (other) {
    // Activar efecto por 30 segundos
    efecto_cigarro_activo = true;
    tiempo_cigarro_restante = 30 * game_get_speed(gamespeed_fps); 
    
    revelar_plataformas(true);
}

instance_destroy();