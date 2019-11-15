import Cocoa

var arr = [3,1,5,7,9]

arr.sort()

var min = 0
var max = 0

for (i, item) in arr.enumerated() {
    if i < (arr.count - 1) {
        min += item
    }
    if i >= 1 && i < arr.count {
        max += item
    }
}

print (min ," ", max)
