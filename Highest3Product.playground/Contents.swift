import Cocoa
import Foundation

print("Enter your number:")
if let number = readLine() {
    print("Hello \(number)!")
    if number.count < 3 {
        print ("-1")
    } else {
        var array = [Int]()
        for i in 0..<number.count {
            if let num = readLine() {
                if let numb = Int(num) {
                    array.append(numb)
                }
            }
        }
        print (array)
    }
}
