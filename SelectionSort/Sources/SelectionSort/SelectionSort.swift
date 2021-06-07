func selectionSort(arr: [Int]) -> [Int] {
    guard arr.count > 1 else {
        return arr
    }

    var sortedArray = arr

    for outerIndex in 0..<(sortedArray.count - 1) {
        var minIndex = outerIndex

        for innerIndex in (outerIndex + 1)..<sortedArray.count {
            if sortedArray[innerIndex] < sortedArray[minIndex] {
                minIndex = innerIndex
            }
        }

        sortedArray.swapAt(outerIndex, minIndex)
    }

    return sortedArray
}
