if (global.paused) {
    var cx = display_get_width() / 3;
    var cy = display_get_height() / 3;

    // Fondo semitransparente
    draw_set_color(c_black);
    draw_set_alpha(0.5);
    draw_rectangle(0, 0, display_get_width(), display_get_height(), false);
    draw_set_alpha(1);

    // Título
    draw_set_color(c_white);
    draw_set_font(-1); // Fuente por defecto
    draw_text(cx - 50, cy - 80, "PAUSA");
    draw_text(cx - 130, cy - 20, "Presiona ESC para continuar");
	
	    // Salir.
    var btn_x1 = cx - 90;
    var btn_y1 = cy + 40;
    var btn_x2 = cx + 150;
    var btn_y2 = cy + 100;

    // Dibuja el botón
    draw_set_color(c_gray);
    draw_rectangle(btn_x1, btn_y1, btn_x2, btn_y2, false);
    draw_set_color(c_white);
    draw_text(cx - 45, cy + 55, "Presiona este boton\npara salir.");

    // Detecta clic sobre el botón
    if (mouse_check_button_pressed(mb_left) &&
        point_in_rectangle(mouse_x, mouse_y, btn_x1, btn_y1, btn_x2, btn_y2)) {
         game_end();
		}
}
