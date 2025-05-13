// Problem 3: Control de Flujo con match e if/else
//
// Cairo tiene construcciones de control de flujo como match e if/else
// que te permiten ejecutar código basado en condiciones.
//
// Tu tarea:
// 1. Implementa la función 'get_day_type' que recibe un número del 1 al 7
//    y devuelve si es un día "weekday" (lunes a viernes) o "weekend" (sábado y domingo)
// 2. Utiliza match para implementar la lógica

// Función para determinar el tipo de día según el número del 1 al 7
fn get_day_type(day_number: u32) -> felt252 {
    // Usamos match para verificar el valor de day_number
    match day_number {
        0 => 'invalid', // 0 no es un día válido
        1 => 'weekday', // Lunes
        2 => 'weekday', // Martes
        3 => 'weekday', // Miércoles
        4 => 'weekday', // Jueves
        5 => 'weekday', // Viernes
        6 => 'weekend', // Sábado
        7 => 'weekend', // Domingo
        _ => 'invalid',  // Cualquier otro número es inválido
    }
}

// Función que utiliza if/else para determinar si un número es par o impar
fn check_even_odd(num: u32) -> felt252 {
    // Usamos if/else para verificar si es par o impar
    if num % 2 == 0 {
        'even' // Par
    } else {
        'odd'  // Impar
    }
}

#[cfg(test)]
mod tests {
    use super::{get_day_type, check_even_odd};

    #[test]
    fn test_get_day_type() {
        // Días de la semana (weekday)
        assert(get_day_type(1) == 'weekday', 'Lunes debe ser dia de semana');
        assert(get_day_type(2) == 'weekday', 'Martes debe ser dia de semana');
        assert(get_day_type(3) == 'weekday', 'Miercoles debe ser dia de seman');
        assert(get_day_type(4) == 'weekday', 'Jueves debe ser dia de semana');
        assert(get_day_type(5) == 'weekday', 'Viernes debe ser dia de semana');
        
        // Fin de semana (weekend)
        assert(get_day_type(6) == 'weekend', 'Ssbado debe ser fin de semana');
        assert(get_day_type(7) == 'weekend', 'Domingo debe ser fin de semana');
        
        // Número inválido
        assert(get_day_type(8) == 'invalid', '8 no es un dia valido');
        assert(get_day_type(0) == 'invalid', '0 no es un dia valido');
    }

    #[test]
    fn test_check_even_odd() {
        // Números pares
        assert(check_even_odd(2) == 'even', '2 debe ser par');
        assert(check_even_odd(4) == 'even', '4 debe ser par');
        assert(check_even_odd(100) == 'even', '100 debe ser par');
        
        // Números impares
        assert(check_even_odd(1) == 'odd', '1 debe ser impar');
        assert(check_even_odd(3) == 'odd', '3 debe ser impar');
        assert(check_even_odd(99) == 'odd', '99 debe ser impar');
    }
}