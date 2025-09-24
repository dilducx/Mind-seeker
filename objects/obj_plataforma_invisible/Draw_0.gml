// Dibujar siempre, aunque esté invisible
if (!visible) {
    // Dibujar outline rojo cuando está oculta
    draw_set_color(c_red);
    draw_set_alpha(0.3);
    draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, false);
    draw_set_alpha(1);
}

// Dibujar el sprite normal si está visible
if (visible) {
    draw_self();
}