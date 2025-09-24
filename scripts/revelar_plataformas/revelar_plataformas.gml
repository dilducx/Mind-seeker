function revelar_plataformas(visible) {
    with (obj_plataforma_invisible) {
        if (visible) {
            visible = true;
            image_alpha = 1;
            // SOLO hacer visible, NO usar solid
            show_debug_message("Plataforma visible");
        } else {
            visible = false;
            image_alpha = 0;
        }
    }
}