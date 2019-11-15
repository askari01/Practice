import UIKit
//import Foundation
//import PlaygroundSupport

if let number = readLine() {
    // print("\(number)")
    if Int(number)! < 3 {
        print ("-1")
    } else {
        var array = [Int]()
        var abc = [String]()
        for _ in 0..<Int(number)! {
            if let num = readLine() {
                abc = num.split(separator: " ").map(String.init)
                for chars in abc {
                    print (chars)
                    array.append(abs(Int(chars)!))
                }
            }
        }
        let array2 = Array(array.sorted().reversed())
        print (array)
        print (abc)
        print (array2[0]*array2[1]*array2[2])
        
        var result = 0
        for i in (0..<array2.count) {
            for j in (i+1..<array2.count) {
                result = max(max, array2[i] * array2[j])
            }
        }
    }
}


let abc = "First name"
var cc = String(describing: abc.split(separator: " "))
print (cc.count)
