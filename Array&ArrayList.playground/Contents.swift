import Cocoa

var array1 = [Int]()
var array2 = [Int](repeating: 12, count: 100)
var array3 = Array<Int>(repeating: 13, count: 100)

let add1 = UnsafeRawPointer(&array1)
let add2 = UnsafeRawPointer(&array2)
let add3 = UnsafeRawPointer(&array3)


print (add1)
print (add2)
print (add3)

for i in 0..<100 {
    array1.append(11)
}

array2.append(121)
array3.append(131)

print (add1)
print (add2)
print (add3)

array1.insert(0, at: 0)
array2.insert(1, at: 0)
array3.insert(2, at: 0)


print (add1)
print (add2)
print (add3)

// fixed size array

struct fixedSizeArray<T> {
    private (set) var count: Int = 0
    private var maxSize: Int
    private var array: [T]
    private var defaultValue: T
    
    
    init(maxSize: Int, defaultValue: T) {
        self.maxSize = maxSize
        self.defaultValue = defaultValue
        self.array = [T](repeating: defaultValue, count: maxSize)
    }
    
    subscript(index: Int) -> T {
        assert(index >= 0)
        assert(index < count)
        return array[index]
    }
    
    mutating func append(_ newElement: T) {
        assert(count < maxSize)
        array[count] = newElement
        count += 1
    }
    
    mutating func removeAt(index: Int) -> T {
        assert(index >= 0)
        assert(index < count)
        count -= 1
        
        let result = array[index]
        array[index] = array[count]
        array[count] = defaultValue
        
        return result
    }
    
    mutating func removeAll() {
        for i in 0..<count {
            array[i] = defaultValue
        }
        count = 0
    }
    
}

var a = fixedSizeArray(maxSize: 10, defaultValue: 0)
a.append(12)
a[0]
a.removeAt(index: 0)
print (a)



// array list

var newA = [1,2,5]
let insertArray = [3,4]

func insert(list: [Int], at: Int) {
    var newList = [Int]()
    for i in 0..<newA.count {
        if at == i {
            for k in list {
                newList.append(k)
            }
            newList.append(newA[i])
        } else {
            newList.append(newA[i])
        }
    }
    newA = newList
}

insert(list: insertArray, at: 2)
