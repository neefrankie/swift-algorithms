func insertionSort(arr: [Int]) -> [Int] {
    guard arr.count > 1 else {
        return arr
    }

    var sortedArray = arr

    for markerIndex in 1..<sortedArray.count {
        // Store marker
        let temp = sortedArray[markerIndex]
        // Start from marker, backward.
        var innerIndex = markerIndex;
        // Use while could avoid loops than for.
        while innerIndex > 0 && sortedArray[innerIndex - 1] > temp {
            sortedArray[innerIndex] = sortedArray[innerIndex - 1]
            // Remember to move the index.
            innerIndex -= 1
        }

        sortedArray[innerIndex] = temp
    }

    return sortedArray
}

print(insertionSort(arr: [77, 99, 44, 55, 22, 88, 11, 00, 66, 33]))
