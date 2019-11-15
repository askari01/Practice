import Cocoa

var str = "abc"
var str1 = "bca"

func naiveHash(_ value: String) -> Int {
    let uniCodeScalar = value.unicodeScalars.map { Int($0.value) }
    return uniCodeScalar.reduce( 0, +)
}

func djb2hash(_ value: String) -> Int {
    let uniCodeScalar = value.unicodeScalars.map { $0.value }
    return uniCodeScalar.reduce(5381) {
        ($0 << 5) &+ $0 &+ Int($1)
    }
}

naiveHash(str)
naiveHash(str1)


djb2hash(str)
djb2hash(str1)

str.hashValue
str1.hashValue

public struct HashTable<Key: Hashable, Value> {
    private typealias Element = (key: Key, value: Value)
    private typealias Bucket = [Element]
    private var buckets: [Bucket]

    private(set) public var count = 0 // count

    public var isEmpty: Bool {
        return count == 0
    }

    // initalizer
    public init(capacity: Int) {
        assert(capacity > 0)
        buckets = Array<Bucket>(repeating: [], count: capacity)
    }

    // return index
    private func index(for key: Key) -> Int {
        return abs(key.hashValue) % buckets.count
    }

    public subscript(key: Key) -> Value? {
        get {
            return value(for: key)
        }
        set {
            if let value = newValue {
                update(value: value, for: key)
            } else {
                removeValue(for: key)
            }
        }
    }

    public func value(for key: Key) -> Value? {
        let index = self.index(for: key)
        return buckets[index].first { $0.key == key }?.value
    }

    @discardableResult
    public mutating func update(value: Value, for key: Key) -> Value? {
        let index = self.index(for: key)

        // check if elements exists
        if let (i, element) = buckets[index].enumerated().first(where: { $0.element.key == key }) {
            let oldValue = element.value
            buckets[index][i].value = value // save value again
            return oldValue
        }

        // save value if not exists
        buckets[index].append((key: key, value: value))
        count += 1 // update count

        return nil
    }

    @discardableResult
    public mutating func removeValue(for key: Key) -> Value? {
        let index = self.index(for: key)

        if let (i, element) = buckets[index].enumerated().first(where: { $0.element.key == key }) {
            buckets[index].remove(at: i)
            count -= 1
            return element.value
        }

        return nil
    }

}


// using hash table
var hashTable = HashTable<String, String>(capacity: 5)
hashTable["firstName"] = "Steve"

if let firstName = hashTable["firstName"] {
    print (firstName)
}

if let lastName = hashTable["lastName"] {
    print (lastName)
} else {
    print ("last name doesn't exist")
}

hashTable["firstName"] = nil

if let firstName = hashTable["firstName"] {
  print(firstName)
} else {
  print("firstName key is not in the hash table")
}
