if (!other.inmune && other.knockback_timer <= 0) {
    other.recibir_dano();
    other.hsp = sign(other.x - x) * 60;
    other.vsp = -40;
    other.knockback_timer = 15; // ~0.25 segundos sin moverse
	instance_destroy();
}
