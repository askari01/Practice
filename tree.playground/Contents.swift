import Cocoa

public class BinarySearchTree<T: Comparable> {
    private(set) public var value: T
    private(set) public var parent: BinarySearchTree?
    private(set) public var left: BinarySearchTree?
    private(set) public var right: BinarySearchTree?

    public init(value: T) {
        self.value = value
    }

    public var isRoot: Bool {
        self.parent == nil
    }

    public var isLeaf: Bool {
        self.right == nil && self.left == nil
    }

    public var isLeftChild: Bool {
        parent?.left === self
    }

    public var isRightChild: Bool {
        parent?.right === self
    }

    public var hasLeftChild: Bool {
        left != nil
    }

    public var hasRightChild: Bool {
        right != nil
    }

    public var hasAnyChild: Bool {
        hasRightChild || hasLeftChild
    }

    public var hasBothChild: Bool {
        hasLeftChild && hasRightChild
    }

    public var count: Int {
        (left?.count ?? 0) + 1 + (right?.count ?? 0)
    }

}


let tree = BinarySearchTree(value: 7)
tree.count

func insert(value: Int) {
    
}

