// Problem 2: Tipos de datos - felt252 y short string
//
// El tipo felt252 es un tipo fundamental en Cairo que puede 
// almacenar tanto números como short strings (cadenas cortas).
//
// Tu tarea:
// 1. Implementa la función 'string_to_number' que convierte un felt252 
//    que contiene un número en formato string a un valor u64
// 2. Implementa la función 'is_valid_short_string' que verifica si 
//    un felt252 es una cadena válida (no más de 31 caracteres)

// Función que debe convertir un felt252 que contiene un número
// en formato string (como '123') a un valor u64 (como 123_u64)
fn string_to_number(value: felt252) -> u64 {
    // TODO: Implementa la conversión de felt252 a u64
    // Sugerencia: Puedes usar value.try_into()
    0
}

// Función que debe verificar si un felt252 puede ser una cadena válida (no más de 31 caracteres ASCII)
fn is_valid_short_string(value: felt252) -> bool {
    // TODO: Implementa la verificación para cadenas cortas
    // Sugerencia: Necesitarás comprobar la longitud del valor
    false
}

#[cfg(test)]
mod tests {
    use super::{string_to_number, is_valid_short_string};

    #[test]
    fn test_string_to_number() {
        // Comprueba la conversión de felt252 a u64
        let number_as_felt: felt252 = 123;
        assert(string_to_number(number_as_felt) == 123_u64, 'Deberia convertir a 123');
        
        let zero_as_felt: felt252 = 0;
        assert(string_to_number(zero_as_felt) == 0_u64, 'Deberia convertir a 0');
    }

    #[test]
    fn test_valid_short_string() {
        // Prueba con una cadena corta válida
        let short_string: felt252 = 'Hola';
        assert(is_valid_short_string(short_string), 'Deberia ser valida');
        
        // Prueba con una cadena vacía
        let empty_string: felt252 = '';
        assert(is_valid_short_string(empty_string), 'Cadena vacia deberia ser valida');
    }
}