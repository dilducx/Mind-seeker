// Detectar respuesta con teclas 1 o 2
if (keyboard_check_pressed(49)) { // Tecla 1
    if (respuesta_correcta == 1) {
        room_goto_next(); // Pasar siguiente nivel - CORRECTO
    } else {
        room_goto_previous(); // Volver al nivel anterior - CORREGIDO
    }
    instance_destroy();
}

if (keyboard_check_pressed(50)) { // Tecla 2
    if (respuesta_correcta == 2) {
        room_goto_next(); // Pasar siguiente nivel - CORRECTO
    } else {
        room_goto_previous(); // Volver al nivel anterior - CORREGIDO
    }
    instance_destroy();
}