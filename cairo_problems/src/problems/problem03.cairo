// Problem 3: Control de Flujo con match e if/else
//
// Cairo tiene construcciones de control de flujo como match e if/else
// que te permiten ejecutar código basado en condiciones.
//
// Tu tarea:
// 1. Implementa la función 'classify_number' que analiza un número y devuelve 
//    una descripción basada en sus propiedades (par, impar, primo)
// 2. Utiliza match e if/else para implementar la lógica

// Enum para clasificar números
#[derive(Copy, Drop, PartialEq)]
enum NumberType {
    Prime,   // Número primo
    Even,    // Par (pero no primo)
    Odd,     // Impar (pero no primo)
}

// Función para clasificar un número
fn classify_number(num: u32) -> NumberType {
    // TODO: Implementa esta función para clasificar el número
    // 1. Si es primo, devuelve NumberType::Prime
    // 2. Si no es primo pero es par, devuelve NumberType::Even
    // 3. Si no es primo y es impar, devuelve NumberType::Odd
    
    // Nota: Necesitarás un helper para verificar si un número es primo
    NumberType::Even // Este es un valor de retorno por defecto
}

// Función auxiliar para verificar si un número es primo
fn is_prime(num: u32) -> bool {
    // TODO: Implementa esta función para verificar si un número es primo
    // Un número es primo si solo es divisible por 1 y por sí mismo
    // Recuerda que 0 y 1 no son primos
    false
}

#[cfg(test)]
mod tests {
    use super::{NumberType, classify_number, is_prime};

    #[test]
    fn test_is_prime() {
        // Números que no son primos
        assert(!is_prime(0), '0 no es primo');
        assert(!is_prime(1), '1 no es primo');
        assert(!is_prime(4), '4 no es primo');
        assert(!is_prime(6), '6 no es primo');
        assert(!is_prime(8), '8 no es primo');
        assert(!is_prime(9), '9 no es primo');
        assert(!is_prime(10), '10 no es primo');

        // Números primos
        assert(is_prime(2), '2 es primo');
        assert(is_prime(3), '3 es primo');
        assert(is_prime(5), '5 es primo');
        assert(is_prime(7), '7 es primo');
        assert(is_prime(11), '11 es primo');
        assert(is_prime(13), '13 es primo');
    }

    #[test]
    fn test_classify_number() {
        // Primos
        assert(classify_number(2) == NumberType::Prime, '2 deberia ser primo');
        assert(classify_number(3) == NumberType::Prime, '3 deberia ser primo');
        assert(classify_number(5) == NumberType::Prime, '5 deberia ser primo');
        assert(classify_number(7) == NumberType::Prime, '7 deberia ser primo');
        
        // Pares no primos
        assert(classify_number(4) == NumberType::Even, '4 deberia ser par');
        assert(classify_number(6) == NumberType::Even, '6 deberia ser par');
        assert(classify_number(8) == NumberType::Even, '8 deberia ser par');
        assert(classify_number(10) == NumberType::Even, '10 deberia ser par');
        
        // Impares no primos
        assert(classify_number(1) == NumberType::Odd, '1 deberia ser impar no primo');
        assert(classify_number(9) == NumberType::Odd, '9 deberia ser impar no primo');
        assert(classify_number(15) == NumberType::Odd, '15 deberia ser impar no primo');
        assert(classify_number(21) == NumberType::Odd, '21 deberia ser impar no primo');
    }
}