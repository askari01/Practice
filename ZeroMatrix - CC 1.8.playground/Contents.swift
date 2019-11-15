import Cocoa

"""
Zero Matrix: Write an algorithm such that if an element in an MxN matrix is 0, its entire row and column are set to 0.
"""

var array = [
[1,2,3,8,9],
[5,6,8,8,8],
[9,0,1,6,0],
] // 3x4

var copy = array

// turn all zero as it's zero
func turnZero(row: Int, col: Int) {
    for (i, item) in array.enumerated() {
        for (j, element) in array[i].enumerated() {
            if i == row {
                array[i][j] = 0
            }
            if j == col {
                array[i][j] = 0
            }
        }
    }
}


for (i, item) in array.enumerated() {
    for (j, element) in array[i].enumerated() {
        if element == 0 && copy[i][j] == 0 { // remove copy check if you want it to cascade
            print ("i:",i,"j:",j)
            turnZero(row: i, col: j)
        }
    }
}

print (array)
