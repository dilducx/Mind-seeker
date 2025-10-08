function perder_vida() {
    vidas--;
    inmune = true;
    alarm[0] = 60; // 1 segundo de inmunidad
    
    show_debug_message("Vidas restantes: " + string(vidas));
    
    // Game Over
    if (vidas <= 0) {
        morir();
    }
}

function respawn() {
    // Esta función debe ser llamada desde el objeto del jugador
    // donde sí existen x e y
    x = room_width / 2;
    y = 100;
    hspeed = 0;
    vspeed = 0;
}