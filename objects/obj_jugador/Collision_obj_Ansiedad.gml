if (!inmune) {
    perder_vida();
    estado = "knockback";
    alarm[1] = 15;

    var knockback_fuerza_x = 7;
    var knockback_fuerza_y = -7;

    if (other.x > x) {
        hsp = -knockback_fuerza_x;
		other.dir*= -1;
    } else {
        hsp = knockback_fuerza_x;
    }
    
    vsp = knockback_fuerza_y;
}
