// obj_menu - Mouse o Step Event
if (mouse_check_button_pressed(mb_left)) {
    // Detectar clic en los botones (usa coordenadas o sprites de botones)
    if (point_in_rectangle(mouse_x, mouse_y, 200, 300, 400, 350)) {
        room_goto(Tutorial);
    }
    if (point_in_rectangle(mouse_x, mouse_y, 200, 400, 400, 450)) {
        game_end();
    }
}
