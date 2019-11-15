import Cocoa

func rotLeft(a: [Int], d: Int) -> [Int] {
    var copy = a
    for i in 0..<d {
        copy.append(copy[0])
//        copy.removeFirst() // the easy way but slow
        copy = Array(copy[1..<copy.count]) // still slow
    }
    return copy
}

rotLeft(a: [1,2,3,4,5], d: 2)

var d = 3
var a = [1,2,3,4,5,6]

let count = a.count
if a.isEmpty {

} else if count == d {

} else {
    let effectiveShift =  d % count
    let newRight = a.prefix(effectiveShift)
    let newLeft = a.suffix(from: effectiveShift)

    print( Array(newLeft+newRight))
}


