/*
 * Escribe una función que reciba dos palabras (String) y retorne
 * verdadero o falso (Bool) según sean o no anagramas.
 * - Un Anagrama consiste en formar una palabra reordenando TODAS
 *   las letras de otra palabra inicial.
 * - NO hace falta comprobar que ambas palabras existan.
 * - Dos palabras exactamente iguales no son anagrama.
 
 Cara - arca.
 Lácteo - coleta.
 Retener - enterré
 Castor - castro.
 Seto - esto.
 Nido - Odín.
 Lobo - bolo.
 Toledo - El todo.
 
 */

import Foundation

let clock = ContinuousClock()

let result1 = clock.measure {
    _ = isItAnagram(the: "cara", and: "arca")
}

let anagramsResult1 = clock.measure {
    _ = anagrams(word: "cara", from: ["arca"])
}

let result2 = clock.measure {
    _ = isItAnagram(the: "caRa", and: "aR cA")
}

let anagramsResult2 = clock.measure {
    _ = anagrams(word: "caRa", from: ["aR cA"])
}

let result3 = clock.measure {
    _ = isItAnagram(the: "lacteo", and: "coleta")
}

let anagramsResult3 = clock.measure {
    _ = anagrams(word: "lacteo", from: ["coleta"])
}

// proporsal
private func isItAnagram(the firstWord: String, and secondWord: String) -> Bool {
    
    // remove spaces
    let first = firstWord.filter{!$0.isWhitespace}
    let second = secondWord.filter{!$0.isWhitespace}
    
    // lower cased and convert to array
    let firstWordArray = Array(first.lowercased())
    let secondWordArray = Array(second.lowercased())
    
    // validation
    if firstWordArray.count == secondWordArray.count && firstWordArray.sorted() == secondWordArray.sorted() {
        return true
    } else {
        return false
    }
}


// alternative found on the internet
// https://stackoverflow.com/questions/32209803/swift-anagram-checker
private func anagrams(word: String, from words: [String]) -> [String] {
    
    let anagrammedWord = word as NSString
    let length = anagrammedWord.length
    var aDic = [unichar:Int]()
    for i in 0..<length {
        let c = anagrammedWord.character(at: i)
        aDic[c] = (aDic[c] ?? 0) + 1
    }
    let foundWords = words.filter {
        let string = $0 as NSString
        guard length == string.length else { return false }
        var bDic = [unichar:Int]()
        for i in 0..<length {
            let c = string.character(at: i)
            let count = (bDic[c] ?? 0) + 1
            if count > aDic[c] ?? 0 {
                return false
            }
            bDic[c] = count
        }
        return true
    }
    return foundWords
}
