/// @func guardar_instancia_como_map(instancia)
/// @desc Devuelve un ds_map con todas las variables públicas serializables de una instancia.
/// @param instancia (ID de la instancia)
function guardar_instancia_como_map(instancia) {
    var resultado = ds_map_create();
    
    // Obtiene la lista de nombres de variables de la instancia
    var nombres = variable_instance_get_names(instancia);
    
    for (var i = 0; i < array_length(nombres); i++) {
        var clave = nombres[i];
        
        // Excluye variables internas del sistema (por ejemplo, aquellas que comienzan con "__")
        if (string_copy(clave, 1, 2) != "__") {
            var valor = variable_instance_get(instancia, clave);
            // Solo se guardan tipos primitivos (números, cadenas, booleanos)
            if (is_real(valor) || is_string(valor) || is_bool(valor)) {
                ds_map_add(resultado, clave, valor);
            }
            // Si necesitas guardar arrays podrías agregar una conversión a una copia del array, pero depende de tu caso.
        }
    }
    return resultado;
}
