enum InputError: Error {
    case noInput
    case notANumber
}

func getInt() throws -> Int {
    guard let s = readLine() else {
        throw InputError.noInput
    }
    
    return Int(s) ?? 0
}

func getString() throws -> String {
    guard let s = readLine() else {
        throw InputError.noInput
    }
    
    return s
}

class Anagram {
    var arrChar = [Character]()
    var size: Int
    var count: Int = 0
    
    init(s: String) {
        for char in s {
            arrChar.append(char)
        }
        size = arrChar.count
    }
    
    func start() {
        doAnagram(newSize: size)
    }
    
    func doAnagram(newSize: Int) {
        
        if (newSize == 1) {

            return
        }
        
        for _ in 0..<newSize {
            
            doAnagram(newSize: newSize - 1)
            if (newSize == 2) {
                displayWord()
            }
            
            rotate(newSize: newSize)
        }
    }
    
    func rotate(newSize: Int) {
        for j in (size - newSize + 1)..<size {
            arrChar.swapAt(j-1, j)
        }
    }
    
    func displayWord() {
        count += 1
        print("\(count) \(String(arrChar))")
        
        if count % 6 == 0 {
            print("\n")
        }
    }
}

print("Enter a word: ")
let input = readLine()
if let input = input {
    let anagram = Anagram(s: input)
    anagram.start()
} else {
    print("No input")
}

