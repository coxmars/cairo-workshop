// Problem 1: Inmutabilidad y Variables
//
// En Cairo, las variables son inmutables por defecto.
// Para permitir cambios en su valor, necesitas usar 'mut'.
//
// Tu tarea:
// 1. Arregla la función 'calculate_sum' para que compile correctamente
// 2. La función debe tomar un valor inicial y sumarle otro valor

fn calculate_sum(initial: u32, to_add: u32) -> u32 {
    // TODO: Corrige el código para manejar la inmutabilidad correctamente
    let running_sum = initial;
    running_sum = running_sum + to_add; // Este código tiene un error
    running_sum
}

#[cfg(test)]
mod tests {
    use super::calculate_sum;

    #[test]
    fn test_calculate_sum() {
        assert(calculate_sum(5, 10) == 15, 'La suma deberia ser 15');
        assert(calculate_sum(0, 0) == 0, 'La suma deberia ser 0');
        assert(calculate_sum(100, 50) == 150, 'La suma deberia ser 150');
    }
}