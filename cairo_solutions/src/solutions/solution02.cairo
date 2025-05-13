fn string_to_number(value: felt252) -> u64 {

    // Solución: Usamos try_into() para convertir felt252 a u64
    // Si hay un error en la conversión, devolvemos 0

    match value.try_into() {
        Option::Some(num) => num,
        Option::None => 0
    }
}

#[cfg(test)]
mod tests {
    use super::{string_to_number};

    #[test]
    fn test_string_to_number() {
        // Comprueba la conversión de felt252 a u64
        let number_as_felt: felt252 = 123;
        assert(string_to_number(number_as_felt) == 123_u64, 'Deberia convertir a 123');
        
        let zero_as_felt: felt252 = 0;
        assert(string_to_number(zero_as_felt) == 0_u64, 'Deberia convertir a 0');
    }
}