import Cocoa


 // Definition for singly-linked list.
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution {
    var abc = [Int]()
    var xyz = [Int]()
    
    var num1 = String()
    var num2 = String()
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var a1 = l1
        var b1 = l2
        var c1: ListNode?
        var sum = String()
        while a1 != nil {
            abc.append(a1!.val)
            a1 = a1?.next
        }
        while b1 != nil {
            xyz.append(b1!.val)
            b1 = b1?.next
        }
        print ("Hello: ",abc.reversed())
        let abc1 = abc.reversed()
        print (abc1.first)
        for i in abc1 {
            num1 += "\(i)"
        }
        print ("Hello: ",xyz.reversed())
        let xyz1 = xyz.reversed()
        print (xyz1.first)
        for i in xyz1 {
            num2 += "\(i)"
        }
        print (num1)
        print (num2)
        if let num1a = Int(num1) , let num2a = Int(num2) {
            sum = "\(num1a + num2a)"
            print(sum.reversed())
        }
        
        for (z,x) in sum.enumerated() {
            if let ele = Int(String(x)) {
                let a = ListNode(ele)
                print (a)
                if c1 == nil {
                    c1 = a
                } else {
                    for item in x {
                        c1?.val = ele
                        if c1?.next == nil {
                            c1?.next = a
                        }
                    }
                }
            }
        }
        print (c1)
        return c1
    }
}


func removeDuplicates(_ nums: inout [Int]) -> Int {
    let abc = Set(nums)
    nums = Array(abc).sorted()
    return abc.count
}

var abc = [1,1,2]
removeDuplicates(&abc)
print (abc)
