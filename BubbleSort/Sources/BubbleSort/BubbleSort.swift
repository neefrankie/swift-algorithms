func bubbleSort(a: [Int]) -> [Int] {

    guard a.count > 1 else {
        return a
    }
    
    var sortedArray = a
    for i in (0..<sortedArray.count).reversed() {
        for j in 0..<i {
            if sortedArray[j] > sortedArray[j+1] {
                sortedArray.swapAt(j, j+1)
            }
        }
    }
    
    return sortedArray
}