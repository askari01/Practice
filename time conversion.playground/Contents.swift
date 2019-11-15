import Cocoa

var str = "12:45:54PM"

let split = str.split(separator: ":")

split.last

var b = ""

if (split.last?.contains("P"))! {
    var a = Int(split[0])!
    if a != 12 {
        a += 12
    }
    var end = split.last?.split(separator: "P")
    if a == 24 {
        b = "00:\(split[1]):\((end?.first)!)"
    } else {
        b = "\(a):\(split[1]):\((end?.first)!)"
    }

} else {
    var a = Int(split[0])!
    if a == 12 {
        a = 00
    }
    var end = split.last?.split(separator: "A")
    if a == 0 {
        b = "\(a)\(a):\(split[1]):\((end?.first)!)"
    } else if String(a).count == 1 && a != 0 {
        b = "0\(a):\(split[1]):\((end?.first)!)"
    } else {
        b = "\(a):\(split[1]):\((end?.first)!)"
    }
}

print (b)
