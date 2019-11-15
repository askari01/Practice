import Cocoa

var str = "Hello"
let abc = UnsafeRawPointer(&str)
print ("str: \(str) \(abc)")

str += " World!"

let abc1 = UnsafeRawPointer(&str)
print ("str: \(str) \(abc1)")

func insert(item: String, at: Int) {
    var newStr = ""
    for (i,k) in str.enumerated() {
        if i == at {
            newStr += item
            newStr += String(k)
        } else {
            newStr += String(k)
        }
    }
    print (newStr)
}

insert(item: ",", at: 5)
