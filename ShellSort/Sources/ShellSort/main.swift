func shellSort(arr: [Int]) -> [Int] {
    guard arr.count > 1 else {
        return arr
    }
    
    var sorted = arr
    
    var h = 1;
    while (h <= sorted.count / 3) {
        h = h * 3 + 1;
    }
    
    while h > 0 {
        print("Start at interval \(h)")
        
        for outerIndex in h..<sorted.count {
            print("Outer loop \(outerIndex)")
            
            let temp = sorted[outerIndex]
            // The final innerIndex is the position to insert temp.
            var innerIndex = outerIndex
            
            while innerIndex > h - 1 && sorted[innerIndex - h] >= temp {
                print("Moving element at \(innerIndex - h) to \(innerIndex)")
                sorted[innerIndex] = sorted[innerIndex - h]
                innerIndex -= h
            }
            print("Insert at sorted position \(innerIndex)")
            sorted[innerIndex] = temp
        }
        
        h = (h - 1) / 3
        print("Interval reduced to \(h)\n")
    }
    
    return sorted
}

var arr = [Int]()

for _ in 1...100 {
    arr.append(Int.random(in: 0...999))
}

print(arr)
print(shellSort(arr: arr))
