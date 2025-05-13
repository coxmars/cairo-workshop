// Problem 4: Arrays y Bucles
//
// Los arrays en Cairo se manejan a través del trait ArrayTrait.
// Los bucles son fundamentales para procesar colecciones de datos.
//
// Tu tarea:
// 1. Implementa una función que encuentre el valor máximo en un array
// 2. Implementa una función que filtre los números pares de un array
// 3. Usa bucles para recorrer los arrays

use core::array::ArrayTrait;
// use core::option::OptionTrait;

// Encuentra el valor máximo en un array
fn find_maximum(arr: @Array<u32>) -> u32 {
    // TODO: Implementa esta función para encontrar el valor máximo
    // Devuelve 0 si el array está vacío
    // Sugerencia: Usa un bucle o iterador para recorrer el array
    0
}

// Filtra los números pares de un array y devuelve un nuevo array con ellos
fn filter_even_numbers(arr: @Array<u32>) -> Array<u32> {
    // TODO: Implementa esta función para filtrar números pares
    // Devuelve un nuevo array que contenga solo los números pares del array original
    let mut result = ArrayTrait::new();
    // Sugerencia: Recorre el array original y agrega los pares al nuevo array
    result
}

#[cfg(test)]
mod tests {
    use super::{find_maximum, filter_even_numbers};
    use core::array::ArrayTrait;

    #[test]
    fn test_find_maximum() {
        // Prueba con un array vacío
        let empty_array = ArrayTrait::new();
        assert(find_maximum(@empty_array) == 0, 'Maximo de un array vacio es 0');

        // Prueba con un array con un solo elemento
        let mut single_element = ArrayTrait::new();
        single_element.append(42);
        assert(find_maximum(@single_element) == 42, 'El maximo deberia ser 42');

        // Prueba con un array con múltiples elementos
        let mut multiple_elements = ArrayTrait::new();
        multiple_elements.append(5);
        multiple_elements.append(9);
        multiple_elements.append(3);
        multiple_elements.append(11);
        multiple_elements.append(2);
        assert(find_maximum(@multiple_elements) == 11, 'El maximo deberia ser 11');
    }

    #[test]
    fn test_filter_even_numbers() {
        // Prueba con un array vacío
        let empty_array = ArrayTrait::new();
        let empty_result = filter_even_numbers(@empty_array);
        assert(empty_result.len() == 0, 'El resultado deberia ser vacio');

        // Prueba con un array con solo números impares
        let mut odd_only = ArrayTrait::new();
        odd_only.append(1);
        odd_only.append(3);
        odd_only.append(5);
        let odd_result = filter_even_numbers(@odd_only);
        assert(odd_result.len() == 0, 'No deberia haber numeros pares');

        // Prueba con un array con números mezclados
        let mut mixed_numbers = ArrayTrait::new();
        mixed_numbers.append(1);
        mixed_numbers.append(2);
        mixed_numbers.append(3);
        mixed_numbers.append(4);
        mixed_numbers.append(5);
        mixed_numbers.append(6);
        let mixed_result = filter_even_numbers(@mixed_numbers);
        
        // Verifica que el resultado contenga exactamente los números pares
        assert(mixed_result.len() == 3, 'Deberia haber 3 numeros pares');
        assert(*mixed_result.at(0) == 2, 'Primer numero par debe ser 2');
        assert(*mixed_result.at(1) == 4, 'Segundo numero par debe ser 4');
        assert(*mixed_result.at(2) == 6, 'Tercer numero par debe ser 6');
    }
}