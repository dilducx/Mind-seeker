if (keyboard_check_pressed(vk_escape)) {
    global.paused = !global.paused;
}
//Activar la pausa del juego
if (global.paused) {
    instance_deactivate_all(true);
    instance_activate_object(obj_Pausa); // Mantén activo solo el menú de pausa
} else {
    instance_activate_all();
}
