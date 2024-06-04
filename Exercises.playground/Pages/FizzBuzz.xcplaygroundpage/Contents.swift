import Foundation

// creamos un ciclo del 1 al 100
//for i in 1...100 {
//    fizzBuzz(item: i)
//}


// para filtrar el item correspondiente
//private func fizzBuzz(item: Int) {
//    
//    let isThree: Bool = item % 3 == 0
//    let isFive: Bool = item % 5 == 0
//    
//    if isThree && isFive {
//        // es multiplo de 3 y de 5
//        print("FIZZ BUZZ \n  ya que \(item) es multiplo de 3 y 5")
//        
//    } else if isThree {
//        // es multiplo de 3
//        print("FIZZ \n  ya que \(item) es multiplo de 3")
//        
//    } else if isFive {
//        // es multiplo de 5
//        print("BUZZ \n  ya que \(item) es multiplo de 5")
//        
//    }
//}

func fizzbuzz(number: Int) -> String {
    switch (number % 3 == 0, number % 5 == 0) {
    case (true, false):
        return "Fizz"
    case (false, true):
        return "Blizz"
    case (true, true):
        return "FizzBuzz"
    default:
        return String (number)
    }
}

print(fizzbuzz(number: 15))
