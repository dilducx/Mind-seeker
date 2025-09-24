// Al tocar una moneda
with (other) {
    monedas_recogidas++; // Aumentar contador
    show_debug_message("Monedas: " + string(monedas_recogidas));
}
instance_destroy(); // Destruir la moneda