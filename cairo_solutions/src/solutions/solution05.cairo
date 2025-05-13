// Problem 5: Diccionarios en Cairo
//
// Los diccionarios permiten almacenar pares clave-valor y son útiles
// para muchas aplicaciones. En Cairo, usamos Felt252Dict para esto.
//
// Tu tarea:
// 1. Implementa funciones simples para trabajar con un diccionario
// 2. Crea una función para agregar valores al diccionario
// 3. Crea una función para obtener valores del diccionario

use core::dict::Felt252Dict;

// Función para crear un nuevo diccionario con valores iniciales
fn create_user_balances() -> Felt252Dict<u64> {
    // Creamos un nuevo diccionario vacío
    let mut balances: Felt252Dict<u64> = Default::default();
    
    // Insertamos balances iniciales para Alice y Bob
    balances.insert('alice', 100);
    balances.insert('bob', 200);
    
    balances
}

// Función para obtener el balance de un usuario
// Usamos una referencia para no consumir el diccionario
fn get_user_balance(ref balances: Felt252Dict<u64>, user: felt252) -> u64 {
    // Obtenemos el balance del usuario del diccionario
    // Si el usuario no existe, get() devuelve 0 por defecto
    balances.get(user)
}

// Función para sumar un monto al balance existente
fn add_to_balance(ref balances: Felt252Dict<u64>, user: felt252, amount: u64) {
    // Obtenemos el balance actual del usuario
    let current_balance = balances.get(user);
    
    // Sumamos el monto al balance actual y actualizamos el diccionario
    balances.insert(user, current_balance + amount);
}

#[cfg(test)]
mod tests {
    use super::{create_user_balances, get_user_balance, add_to_balance};

    #[test]
    fn test_create_balances() {
        let mut balances = create_user_balances();
        
        // Ahora pasamos el diccionario por referencia
        assert(get_user_balance(ref balances, 'alice') == 100, 'Alice debe tener 100');
        assert(get_user_balance(ref balances, 'bob') == 200, 'Bob debe tener 200');
        assert(get_user_balance(ref balances, 'charlie') == 0, 'Charlie debe tener 0');
    }

    #[test]
    fn test_add_to_balance() {
        let mut balances = create_user_balances();
        
        // Agrega al balance de un usuario existente
        add_to_balance(ref balances, 'bob', 50);
        assert(get_user_balance(ref balances, 'bob') == 250, 'Balance de Bob debe ser 250');
        
        // Agrega al balance de un usuario que no existe (debería crearlo)
        add_to_balance(ref balances, 'eve', 75);
        assert(get_user_balance(ref balances, 'eve') == 75, 'Balance de Eve debe ser 75');
    }
}