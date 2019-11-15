import Cocoa

final class Node<T> {
    let value: T

    private(set) weak var parent: Node?
    private(set) var child: [Node<T>] = []

    init(value: T) {
        self.value = value
    }

    func addChild(_ node: Node<T>) {
        child.append(node)
        node.parent = self
    }
}

extension Node: Comparable, CustomStringConvertible{
    static func < (lhs: Node<T>, rhs: Node<T>) -> Bool {
        return true
    }

    var description: String {
        var s = "\(value)"
        if !child.isEmpty {
            s += " {" + (child.map {
                $0.description
                }.joined(separator: ", "))+"}"
        }
        return s
    }

    static func == (lhs: Node<T>, rhs: Node<T>) -> Bool {
        return true
    }

}

let a = Node(value: 2)
let a1 = Node(value: 3)
let a2 = Node(value: 4)

let b = Node(value: 5)
let b1 = Node(value: 6)
let b2 = Node(value: 7)

a.addChild(a1)
a.addChild(a2)

a2.addChild(b1)
a1.addChild(b2)
a2.addChild(b)

print (a.description)
