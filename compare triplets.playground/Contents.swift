import Cocoa

// compare and find max of the two array

func compareTriplets(a: [Int], b: [Int]) -> [Int] {
    var result = [0,0]
    if a.count >= b.count {
        for (i,item) in a.enumerated() {
            if a[i] > b[i] {
                result[0] += 1
            } else if a[i] < b[i] {
                result[1] += 1
            }
        }
    }
    else {
        for (i,item) in b.enumerated() {
            if b[i] > a[i] {
                result[1] += 1
            } else if b[i] < a[i] {
                result[0] += 1
            }
        }
    }
    return result
}

compareTriplets(a: [5,6,7],
                b: [3,6,10])
