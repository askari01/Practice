import Cocoa
import PlaygroundSupport

var array = [9, 7, 3, 5, 1]
//var array = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16] // for binary search
var arrayUnsorted = [5,8,3,4,6]

// binary search
// the array should be sorted
// divide array in two and search

array.sort()

func binarySearch(array: [Int], item: Int) {
    var low = 0
    var high = array.count - 1
    while low <= high {
        var mid = low + (high - low)/2
        var guess = array[mid]
        if item == guess {
            print ("found")
            return
        }
        if guess > item {
            print ("\(guess) is high")
            high = mid - 1
        } else {
            print ("\(guess) is low")
            low = mid + 1
        }
    }
    print ("not found")
}

binarySearch(array: array, item: 1)

// selection Sort

func selectionSort(array: [Int]) -> [Int] {
    var sortedArray = array
    for i in 0..<sortedArray.count - 1 {
        var smallest = i
        for j in i + 1..<sortedArray.count {
            if sortedArray[j] < sortedArray[smallest] {
                smallest = j
            }
        }
        if i != smallest {
            sortedArray.swapAt(i, smallest)
        }
    }
    return sortedArray
}

var abc = selectionSort(array: arrayUnsorted)
