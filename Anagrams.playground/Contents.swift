import Cocoa

var lines = [
    "pear",
    "amleth",
    "dormitory",
    "tinsel",
    "dirty room",
    "hamlet",
    "listen",
    "silent"
]

var list = [String]()


for i in 0..<(lines.count/2) {
    let j = lines[i].replacingOccurrences(of: " ", with: "")
    let name = j.lowercased().sorted()
    var collection = "\(lines[i])"
    for k in 1..<lines.count {
        let l = lines[k].replacingOccurrences(of: " ", with: "")
        let name1 = l.lowercased().sorted()
        if name1 == name {
            if !collection.contains("\(lines[k])") {
                collection.append(",\(lines[k])")
            }
        }
    }
    // sorted and divided list
    let divided = collection.split(separator: ",").sorted()
    var abc = ""
    for item in divided {
        if item != divided.last {
            abc += "\(item),"
        } else {
            abc += "\(item)"
        }
    }
    list.append(abc)
}
print (list.sorted())
