import Cocoa

var arr = [0, 0, -1, 1, 1]

var positive: Float = 0.00
var negative: Float = 0.00
var zero: Float = 0.00

for i in arr {
    if i == 0 {
        zero += 1
    } else if i >= 1 {
        positive += 1
    } else {
        negative += 1
    }
}

let count = Float(arr.count)

print (String(format: "%.6f", positive/count))
print (String(format: "%.6f", negative/count))
print (String(format: "%.6f", zero/count))
