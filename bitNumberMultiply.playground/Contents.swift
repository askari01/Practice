import Cocoa

struct BigInt {
    var value: String
    
    func multiply(right: BigInt) -> BigInt {
        var leftCharacterArray = value.reversed().map { Int(String($0))! }
        var rightCharacterArray = right.value.reversed().map { Int(String($0))! }

        print (leftCharacterArray)
        print (rightCharacterArray)
        
        var result = [Int](repeating: 0, count: leftCharacterArray.count+rightCharacterArray.count)
        print ("Start: ", result)
        
        for leftIndex in 0..<leftCharacterArray.count {
            for rightIndex in 0..<rightCharacterArray.count {
                let resultIndex = leftIndex + rightIndex
                print ("resultIndex: ",resultIndex)
                print ("* ",leftCharacterArray[leftIndex] * rightCharacterArray[rightIndex])
                print ("operation or result[resultIndex]: ",(resultIndex >= result.count ? 0 : result[resultIndex]))
                print ("Result before: ",result[resultIndex])
                result[resultIndex] = leftCharacterArray[leftIndex] * rightCharacterArray[rightIndex] + (resultIndex >= result.count ? 0 : result[resultIndex])
                
                print ("Result",result[resultIndex])
                if result[resultIndex] > 9 {
                    print ("result[resultIndex+1]: ",result[resultIndex + 1])
                    print ("result[resultIndex]/10: ",result[resultIndex] / 10)
                    print ("result[resultIndex+1]: operation + ",(resultIndex+1 >= result.count ? 0 : result[resultIndex + 1]))
                    result[resultIndex + 1] = (result[resultIndex] / 10) + (resultIndex+1 >= result.count ? 0 : result[resultIndex + 1])
                    print ("result[resultIndex+1]: ",result[resultIndex + 1])
                    print ("result[resultIndex] ", result[resultIndex])
                    print ("result[resultIndex]: operation -= ",(result[resultIndex] / 10) * 10)
                    result[resultIndex] -= (result[resultIndex] / 10) * 10
                    print ("result[resultIndex]: after ",result[resultIndex])
                }
                
            }
            
        }
        print ("Result after: ", result)
        result = Array(result.reversed())
        return BigInt(value: result.map { String($0) }.joined(separator: ""))
    }
}

func * (lhs: BigInt, right: BigInt) -> BigInt {
    return lhs.multiply(right: right)
}


let int1 = BigInt(value: "29")
let int2 = BigInt(value: "92")

let result = int1.multiply(right: int2)
let resultCheck = int1 * int2

print (result.value, resultCheck.value)
