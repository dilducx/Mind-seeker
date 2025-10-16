switch (state) {
    case 0: // Esperando
        if (instance_exists(target)) {
            var dist = point_distance(x, y, target.x, target.y);
            if (dist < vision_range) {
                // Cambia a estado de ataque
                state = 1;
                var dir = point_direction(x, y, target.x, target.y);
                hsp = lengthdir_x(attack_speed, dir);
                vsp = lengthdir_y(attack_speed, dir);
            }
        }
        break;

    case 1: // Atacando
        x += hsp;
        y += vsp;
        lifetime -= 1;
        if (lifetime <= 0) {
            instance_destroy(); // muere después del ataque
        }
        break;
}
