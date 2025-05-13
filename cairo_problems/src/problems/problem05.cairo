// Problem 5: Diccionarios en Cairo
//
// Los diccionarios permiten almacenar pares clave-valor y son útiles
// para muchas aplicaciones. En Cairo, usamos Felt252Dict para esto.
//
// Tu tarea:
// 1. Implementa funciones simples para trabajar con un diccionario
// 2. Crea una función para agregar valores al diccionario
// 3. Crea una función para obtener valores del diccionario

use core::dict::{Felt252Dict};

// Función para crear un nuevo diccionario con algunos valores iniciales
fn create_user_balances() -> Felt252Dict<u64> {
    // TODO: Crea un nuevo diccionario e inserta algunos valores iniciales
    // Crea balances para los usuarios: 'alice' -> 100, 'bob' -> 200
    let mut balances: Felt252Dict<u64> = Default::default();
    
    // Tu código aquí: Inserta balances para Alice y Bob
    
    balances
}

// Función para obtener el balance de un usuario
fn get_user_balance(balances: @Felt252Dict<u64>, user: felt252) -> u64 {
    // TODO: Implementa esta función para obtener el balance de un usuario
    // Si el usuario no existe, devuelve 0
    0
}

// Función para sumar un monto al balance existente
fn add_to_balance(ref balances: Felt252Dict<u64>, user: felt252, amount: u64) {
    // TODO: Implementa esta función para sumar un monto al balance existente
    // Primero obtén el balance actual, luego suma y actualiza
}

#[cfg(test)]
mod tests {
    use super::{create_user_balances, get_user_balance, add_to_balance};

    #[test]
    fn test_create_balances() {
        let balances = create_user_balances();
        
        assert(get_user_balance(@balances, 'alice') == 100, 'Alice debe tener 100');
        assert(get_user_balance(@balances, 'bob') == 200, 'Bob debe tener 200');
        assert(get_user_balance(@balances, 'charlie') == 0, 'Charlie debe tener 0');
    }

    #[test]
    fn test_add_to_balance() {
        let mut balances = create_user_balances();
        
        // Agrega al balance de un usuario existente
        add_to_balance(ref balances, 'bob', 50);
        assert(get_user_balance(@balances, 'bob') == 250, 'Balance de Bob debe ser 250');
        
        // Agrega al balance de un usuario que no existe (debería crearlo)
        add_to_balance(ref balances, 'eve', 75);
        assert(get_user_balance(@balances, 'eve') == 75, 'Balance de Eve debe ser 75');
    }
}