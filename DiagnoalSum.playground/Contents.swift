import Cocoa

var a =
[
    [1,2,3,11],
    [4,5,6,12],
    [7,8,9,13],
    [15,16,17,14]
]

var l = 0
var r = 0

for i in 0..<a.count {
    l += a[i][i]
    r += a[i][a.count - i - 1]
}

print (abs(l - r))
