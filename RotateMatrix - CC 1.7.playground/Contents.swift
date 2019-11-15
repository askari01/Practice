import Cocoa

"""
Given an image represented by an NxN matrix, where each pixel in the image is 4
bytes, write a method to rotate the image by 90 degrees. Can you do this in place?
"""

var array = [
[1 ,2 ,3 , 4],
[5 ,6 ,7 , 8],
[9 ,10,11,12],
[13,14,15,16]
]

var temp = 0
var temp1 = 0
// rotate 90' Clockwise

temp = array[0][0] // 1

array[0][0] = array[3][0]
array[3][0] = array[3][3]
array[3][3] = array[0][3]
array[0][3] = temp

temp = array[0][1]

array[0][1] = array[2][0]
array[2][0] = array[3][2]
array[3][2] = array[1][3]
array[2][2] = temp

temp = array[0][2]

array[0][2] = array[1][0]
array[1][0] = array[3][1]
array[3][1] = array[2][3]
array[2][3] = temp

print (array)

for i in array {
    print (i)
}
