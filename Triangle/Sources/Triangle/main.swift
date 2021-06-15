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

func triangle(n: Int) -> Int {
    if (n == 1) {
        return 1
    }
    
    return n + triangle(n: n - 1)
}

print("Enter a number: ")

do {
    let theNumber = try getInt()
    let theAnswer = triangle(n: theNumber)
    print(theAnswer)
} catch {
    print("Error!")
}

