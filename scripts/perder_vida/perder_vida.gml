function perder_vida() {
    vidas--;
    inmune = true;
    alarm[0] = 60; // 1 segundo de inmunidad
    
    show_debug_message("Vidas restantes: " + string(vidas));
    
    // Resetear posición si cayó
    if (y > room_height) {
        x = room_width / 2;
        y = 100;
    }
    
    // Game Over
    if (vidas <= 0) {
        morir();
    }
}