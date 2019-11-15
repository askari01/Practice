import Cocoa
import Foundation

var array = [5,2,6,1,3,4]

// quick sort
var Pivot = 0

if array[0] > array[5] {
    array.swapAt(0, 5)
}

print (array)

if array[0] > array[5] {
    array.swapAt(0, 5)
}

print (array)

Pivot = 1

if array[1] > array[5] {
    array.swapAt(1, 5)
}

print (array)

Pivot = 2

if array[2] > array[5] {
    array.swapAt(2, 5)
}

print (array)


Pivot = 5

if array[2] > array[5] {
    array.swapAt(5, 2)
}

print (array)

Pivot = 4

if array[2] > array[4] {
    array.swapAt(2, 4)
}

print (array)

Pivot = 2

if array[2] > array[4] {
    array.swapAt(2, 4)
}

print (array)

Pivot = 3

if array[3] > array[4] {
    array.swapAt(3, 4)
}

print (array)


