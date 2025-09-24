// Tiempo en segundos
tiempo = 3; // 3 segundos de espera
show_debug_message("Game Over - Reiniciando en " + string(tiempo) + " segundos");

// Configurar alarma para reinicio
alarm[0] = room_speed * tiempo;