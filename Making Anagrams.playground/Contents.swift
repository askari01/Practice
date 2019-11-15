import Cocoa

var str1 = "abc".lowercased() // lowercased
var str2 = "cde".lowercased() // lowercased

var str1Array = Array(str1).sorted()
var str2Array = Array(str2).sorted()

if str1Array == str2Array {
    print ("0")
}

print (Set(str2Array).count)
print (Set(str1Array).count)

var count = 0
var diff = 0

for i in 0..<str2Array.count {
    for j in 0..<str1Array.count {
        if str2Array[i] == str1Array[j] {
            count += 1
        } else {
            diff += 1
        }
        break
    }
}
