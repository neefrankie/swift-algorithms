class Quicksort1 {
    private var theArray: [Int]
    
    init(a: [Int]) {
        theArray = a
    }
    
    func display() {
        print(theArray)
    }
    
    func partition(leftBound: Int, rightBound: Int, privot: Int) -> Int {
        var leftIndex = leftBound - 1
        var rightIndex = rightBound
        
        while (true) {
            while true {
                leftIndex += 1
                if theArray[leftIndex] >= privot {
                    break
                }
            }
            
            while rightIndex > leftBound {
                rightIndex -= 1
                if theArray[rightIndex] <= privot {
                    break
                }
            }
            
            if leftIndex >= rightIndex {
                break
            } else {
                theArray.swapAt(leftIndex, rightIndex)
            }
        }
        
        theArray.swapAt(leftIndex, rightBound)
        return leftIndex
    }
    
    func recQuickSort(left: Int, right: Int) {
        if right - left <= 0 {
            return
        } else {
            let pivot = theArray[right]
            let partitionIndex = partition(leftBound: left, rightBound: right, privot: pivot)
            recQuickSort(left: left, right: partitionIndex - 1)
            recQuickSort(left: partitionIndex + 1, right: right)
        }
    }
    
    func quickSort() {
        recQuickSort(left: 0, right: theArray.count - 1)
    }
}

var arr = [Int]()
for _ in  1...16 {
    arr.append(Int.random(in: 1...99))
}

var quickSort = Quicksort1(a: arr)
quickSort.display()
quickSort.quickSort()
quickSort.display()

