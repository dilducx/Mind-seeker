if (!other.inmune && other.knockback_timer <= 0) {
    other.recibir_dano();
    other.hspeed = sign(other.x - x) * 6;
    other.vspeed = -4;
    other.knockback_timer = 15; // ~0.25 segundos sin moverse
}
