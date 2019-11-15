import Cocoa

// sum of hour glass
// find max sum

var array =
//[
//    [1, 1, 1, 0, 0, 0],
//    [0, 1, 0, 0, 0, 0],
//    [1, 1, 1, 0, 0, 0],
//    [0, 0, 0, 0, 0, 0],
//    [0, 0, 0, 0, 0, 0],
//    [0, 0, 0, 0, 0, 0]
//]
//[
//    [1, 1, 1, 0, 0, 0],
//    [0, 1, 0, 0, 0, 0],
//    [1, 1, 1, 0, 0, 0],
//    [0, 0, 2, 4, 4, 0],
//    [0, 0, 0, 2, 0, 0],
//    [0, 0, 1, 2, 4, 0]
//]
//[
//    [, 1, 1, 0, 0, 0],
//    [0, 1, 0, 0, 0, 0],
//    [1, 1, 1, 0, 0, 0],
//    [0, 9, 2, -4, -4, 0],
//    [0, 0, 0, -2, 0, 0],
//    [0, 0, -1, -2, -4, 0]
//]
//[
//    [0, 0, 0, 0, 0, 0],
//    [0, 0, 0, 0, 0, 0],
//    [0, 0, 0, 0, 0, 0],
//    [0, 0, 0, 0, 0, 0],
//    [0, 0, 0, 0, 0, 0],
//    [0, 0, 0, 0, 0, 0]
//]
//[
//    [1, 1, 1, 1, 1, 1],
//    [0, 1, 0, 1, 1, 1],
//    [1, 1, 1, 1, 1, 1],
//    [1, 1, 1, 1, 1, 1],
//    [1, 1, 1, 1, 1, 1],
//    [1, 1, 1, 1, 1, 1]
//]

for (i,k) in array.enumerated() {
    print (i , k)
}

// 6-2 ; 6-2

// for row 0
array[0][0]
array[0][1]
array[0][2]
array[0+1][1]
array[0+2][0]
array[0+2][1]
array[0+2][2]

array[0][1]
array[0][2]
array[0][3]
array[0+1][2]
array[0+2][1]
array[0+2][2]
array[0+2][3]

array[0][2]
array[0][3]
array[0][4]
array[0+1][3]
array[0+2][2]
array[0+2][3]
array[0+2][4]

array[0][3]
array[0][4]
array[0][5]
array[0+1][4]
array[0+2][3]
array[0+2][4]
array[0+2][5]

// for row 1
array[1][0]
array[1][1]
array[1][2]
array[1+1][1]
array[1+2][0]
array[1+2][1]
array[1+2][2]

array[1][1]
array[1][2]
array[1][3]
array[1+1][2]
array[1+2][1]
array[1+2][2]
array[1+2][3]

array[1][2]
array[1][3]
array[1][4]
array[1+1][3]
array[1+2][2]
array[1+2][3]
array[1+2][4]

array[1][3]
array[1][4]
array[1][5]
array[1+1][4]
array[1+2][3]
array[1+2][4]
array[1+2][5]


// for row 2
array[2][0]
array[2][1]
array[2][2]
array[2+1][1]
array[2+2][0]
array[2+2][1]
array[2+2][2]

array[2][1]
array[2][2]
array[2][3]
array[2+1][2]
array[2+2][1]
array[2+2][2]
array[2+2][3]

array[2][2]
array[2][3]
array[2][4]
array[2+1][3]
array[2+2][2]
array[2+2][3]
array[2+2][4]

array[2][3]
array[2][4]
array[2][5]
array[2+1][4]
array[2+2][3]
array[2+2][4]
array[2+2][5]

// for row 3
array[3][0]
array[3][1]
array[3][2]
array[3+1][1]
array[3+2][0]
array[3+2][1]
array[3+2][2]

array[3][1]
array[3][2]
array[3][3]
array[3+1][2]
array[3+2][1]
array[3+2][2]
array[3+2][3]

array[3][2]
array[3][3]
array[3][4]
array[3+1][3]
array[3+2][2]
array[3+2][3]
array[3+2][4]

array[3][3]
array[3][4]
array[3][5]
array[3+1][4]
array[3+2][3]
array[3+2][4]
array[3+2][5]


print("Count: ",array.count)
print("Items in index row: ", array.first?.count ?? 0)
let countIndex0 = array.first?.count ?? 0
var maxSum = Int()
var sum = Int()
for i in 0..<(array.count-2) {
    print ("i: ", i)
    for j in 0..<(countIndex0-2) {
        print ("j: ",j)

        print (array[i][j])
        sum += array[i][j]

        print (array[i][j+1])
        sum += array[i][j+1]

        print (array[i][j+2])
        sum += array[i][j+2]

        print (array[i+1][j+1])
        sum += array[i+1][j+1]

        print (array[i+2][j])
        sum += array[i+2][j]

        print (array[i+2][j+1])
        sum += array[i+2][j+1]

        print (array[i+2][j+2])
        sum += array[i+2][j+2]

        print ("SUM: ", sum)

        if i == 0 && j == 0 {
            maxSum = sum
        }

        if sum >= maxSum {
            print ("Sum",sum)
            print ("Max",maxSum)
            maxSum = sum
        }
        sum = 0
    }
    print ("*****")
}

print (sum)
print (maxSum)
