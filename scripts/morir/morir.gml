function morir() {
    show_debug_message("Creando pantalla Game Over");
    
    // Crear pantalla de game over
    instance_create_depth(room_width/2, room_height/2, -10000, obj_game_over);
    
    // Destruir jugador
    instance_destroy();
}