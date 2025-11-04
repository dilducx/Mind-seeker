// Reinicio manual con ENTER o ESPACIO
if (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space)) {
    room_goto(RM_menu); // Volver al menú
}