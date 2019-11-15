import Cocoa

let numbers = [11, 59, 3, 2, 53, 17, 31, 7, 19, 67, 47, 13, 37, 61, 29, 43, 5, 41, 23]

// iterative linear search approach
for i in numbers {
    if i == 43 {
        print("number found")
    }
}

// binary search
// linear approach

// sort list
let sortedNumbers = numbers.sorted()
// find middle
var lower = 0
var upper = sortedNumbers.count
while lower < upper {
    var middle = lower + (upper - lower) / 2
    if sortedNumbers[middle] == 43 {
        print ("found", middle)
        break
    } else if sortedNumbers[middle] < 43 {
        lower = middle + 1
    } else {
        upper = middle
    }
}


// recursion approach

