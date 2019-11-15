import Cocoa

MemoryLayout<Int>.size
MemoryLayout<Int>.alignment
MemoryLayout<Int>.stride

MemoryLayout<Float>.size
MemoryLayout<Float>.alignment
MemoryLayout<Float>.stride

MemoryLayout<Int16>.size
MemoryLayout<Int16>.alignment
MemoryLayout<Int16>.stride

MemoryLayout<Bool>.size
MemoryLayout<Bool>.alignment
MemoryLayout<Bool>.stride

MemoryLayout<Int8>.size
MemoryLayout<Int8>.alignment
MemoryLayout<Int8>.stride

MemoryLayout<UInt>.size
MemoryLayout<UInt>.alignment
MemoryLayout<UInt>.stride

MemoryLayout<String>.size
MemoryLayout<String>.alignment
MemoryLayout<String>.stride

MemoryLayout<Int64>.size
MemoryLayout<Int64>.alignment
MemoryLayout<Int64>.stride

MemoryLayout<Int32>.size
MemoryLayout<Int32>.alignment
MemoryLayout<Int32>.stride

struct abc {
    var abc: Int
    var xyx: Float
}

MemoryLayout<abc>.size

enum xyz {
    case abc
    case xyx
}

MemoryLayout<xyz>.size

var mem = ""

for i in 0...20 {
    mem += "\(i)"
}

print (mem)

let int: Int64 = Int64(mem) ?? 0

// 1
let count = 2
let stride = MemoryLayout<Int>.stride
let alignment = MemoryLayout<Int>.alignment
let byteCount = stride * count

// 2
do {
    print("Raw pointers")
    
    // 3
    let pointer = UnsafeMutableRawPointer.allocate(byteCount: byteCount, alignment: alignment)
    // 4
    defer {
        pointer.deallocate()
    }
    
    // 5
    pointer.storeBytes(of: 42, as: Int.self)
    pointer.advanced(by: stride).storeBytes(of: 6, as: Int.self)
    pointer.load(as: Int.self)
    pointer.advanced(by: stride).load(as: Int.self)
    
    // 6
    let bufferPointer = UnsafeRawBufferPointer(start: pointer, count: byteCount)
    for (index, byte) in bufferPointer.enumerated() {
        print("byte \(index): \(byte)")
    }
}
