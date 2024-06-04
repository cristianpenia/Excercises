/*
 ¿ES UN NÚMERO PRIMO?
 
 Enunciado: Escribe un programa que se encargue de comprobar si un número es o no primo.
 Hecho esto, imprime los números primos entre 1 y 100.
*/

import Foundation

for counter in 0...10 {
    isPrime(the: counter)
}

private func isPrime(the number: Int) {
    
    if number <= 1 {
        // NO
        
    } else if number == 2 {
        // YES
        print("\(number) es primo")
        
    } else if number > 2 && !(number%2 == 0) {
        // YES
        print("\(number) es primo")
        
    }
}
