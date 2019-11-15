import Cocoa

var number = 1

var str = String(number, radix: 2)

str.count
var zero = ""

for i in 0..<(32 - str.count) {
    zero += "0"
}

//str = zero + str
print (str)

var newStr = ""
for (i,item) in str.enumerated() {
    if item == "0" {
        newStr += "1"
    } else {
        newStr += "0"
    }
}

var anc = Int(newStr)
print(newStr)
