// --- APLICAR GRAVEDAD ---
vsp += grav;

// --- MOVER EN EJE X ---
if (!place_meeting(x + hsp * dir, y, plat_corto)) {
    x += hsp * dir;
} else {
    // Si choca con una pared, cambia de dirección
    dir *= -1;
}

// --- MOVER EN EJE Y (CAÍDA / SUELO) ---
if (!place_meeting(x, y + vsp, plat_corto)) {
    y += vsp;
} else {
    // Detener la caída si toca el suelo
    while (!place_meeting(x, y + sign(vsp), plat_corto)) {
        y += sign(vsp);
    }
    vsp = 0;
}

// --- EVITAR CAERSE DE LOS BORDES ---
if (!place_meeting(x + dir * 8, y + 8, plat_corto)) {
    dir *= -1;
}

// --- ANIMACIÓN / GIRO ---
image_xscale = dir;
