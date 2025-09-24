// Draw Event de cont_cig
if (instance_exists(obj_jugador)) {
    var jugador = instance_find(obj_jugador, 0);
    
    // Verificar que el jugador tiene las variables necesarias
    if (variable_instance_exists(jugador, "efecto_cigarro_activo") && 
        variable_instance_exists(jugador, "tiempo_cigarro_restante")) {
        
        if (jugador.efecto_cigarro_activo) {
            // Convertir frames a segundos
            var segundos = ceil(jugador.tiempo_cigarro_restante / game_get_speed(gamespeed_fps));
            
            // Dibujar UI fancy
            draw_set_font(fnt_cigarro);
            draw_set_halign(fa_center);
            
            // Fondo
            draw_set_color(c_black);
            draw_set_alpha(0.7);
            draw_rectangle(room_width/2 - 40, 20, room_width/2 + 40, 50, false);
            draw_set_alpha(1);
            
            // Texto
            draw_set_color(c_yellow);
            draw_text(room_width/2, 25, "cigaro " + string(segundos) + "s");
            
            // Resetear configuraciones de dibujo
            draw_set_color(c_white);
            draw_set_halign(fa_left);
        }
    }
}