// Contar el tiempo
tiempo_cerrar--;

// Cerrar el juego cuando el tiempo llegue a 0
if (tiempo_cerrar <= 0) {
    game_end(); // Cierra el juego completamente
}

// Opción: Cerrar manualmente con ESC
if (keyboard_check_pressed(vk_escape)) {
    game_end();
}