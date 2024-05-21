/*
 * Escribe un programa que imprima los 50 primeros números de la sucesión
 * de Fibonacci empezando en 0.
 * - La serie Fibonacci se compone por una sucesión de números en
 *   la que el siguiente siempre es la suma de los dos anteriores.
 *   0, 1, 1, 2, 3, 5, 8, 13...
 */

import Foundation

fibonacciSequence(of: 8)

private func fibonacciSequence(of number: Int) {

    var sequence = [Int]()
    
    for i in 0..<number {
        sequence.append(operation(n: i))
    }
    
    print(sequence)
}

private func operation(n: Int) -> Int {
    
    var memo = [Int: Int]()
    
    func fib(_ n: Int) -> Int {
        
        if let result = memo[n] {
            return result
        }
        
        if n <= 1 {
            memo[n] = n
            return n
            
        } else {
            let result = fib(n - 1) + fib(n - 2)
            memo[n] = result
            return result
            
        }
    }
    
    return fib(n)
}
