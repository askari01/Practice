import Cocoa

class Node {
    var value: Int
    var next: Node?
    
    init(value: Int) {
        self.value = value
    }
}

class LinkedList {
    var head: Node?
    
    var isEmpty: Bool {
        return head == nil
    }
    
    var isFirst: Node? {
        return head
    }
    
    var last: Node? {
        
        guard var node = head else {
            return nil
        }
        
        while let next = node.next {
            node = next
        }
        return node
    }
    
    var count: Int {
        guard var node = head else {
            return 0
        }
        
        var count = 1
        while let next = node.next {
            node = next
            count += 1
        }
        return count
    }
    
    var print: String {
        var s = "["
        var node = head
        while node != nil {
            s += "\(node!.value)"
            node = node?.next
            if node != nil {
                s += ", "
            }
        }
        return s + "]"
    }
    
    func append(value: Int) {
        let newNode = Node(value: value)
        
        if let lastNode = last {
            newNode.next = newNode
        } else {
            head = newNode
        }
    }
    
    func node(atIndex index: Int) -> Node {
        if index == 0 {
            return head!
        } else {
            var node = head?.next
            for _ in 1..<index {
                node = node?.next
                if node == nil {
                    break
                }
            }
            return node!
        }
    }
    
    func insert(atIndex index: Int, value: Int) {
        let newNode = Node(value: value)
        if index == 0 {
            newNode.next = head
            head = newNode
        } else {
            let previousNode = self.node(atIndex: index - 1)
            let nextNode = previousNode.next
            newNode.next = previousNode.next
            previousNode.next = newNode
        }
    }

}

let abc = LinkedList()
abc.insert(atIndex: 0, value: 1)
abc.insert(atIndex: 1, value: 2)
abc.insert(atIndex: 2, value: 3)
abc.insert(atIndex: 3, value: 4)

abc.print
