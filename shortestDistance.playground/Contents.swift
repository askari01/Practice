import Cocoa

//
// find shortest distance
// 1 is wall
// 0 is path
// going diagonally is not allowed
//
// FIND : S->G or vice versa

let w = [
    ["S", "0", "0", "0", "0"],
    ["0", "1", "0", "1", "0"],
    ["0", "1", "0", "1", "0"],
    ["0", "1", "0", "1", "0"],
    ["G", "0", "0", "0", "0"]
]

var blueMap = w // create a copy for markings

//print (w.count)
let flat = w.flatMap{$0}
//print (flat.count)

var positionS = [0,0]
var positionG = [0,0]
var zero = 0
var one = 0

for i in 0...(w.count - 1) {
    for (indexJ,j) in w[i].enumerated() {
        if j == "S" {
            positionS = [i,indexJ]
        }
        if j == "G" {
            positionG = [i,indexJ]
        }
        if j == "0" {
            zero += 1
        }
        if j == "1" {
            one += 1
        }
    }
}

print (positionS)
print (positionG)

let positionSInitial = positionS

var steps = 0

func calculatePosition() {
    
    if positionG == positionS {
        print ("Break")
        print (positionG, positionS, steps)
        return
    }
//    let check = Int.random(in: 0...3)
//
//    if check == 0 {
        // check for path
        if w[positionS.first!].indices.contains(positionS.last! + 1) {
            if "0" == w[positionS.first!][positionS.last! + 1] && blueMap[positionS.first!][positionS.last! + 1] != "X" {
                print ("right")
                // move right
                if blueMap[positionS.first!][positionS.last! + 1] != "X" {
                    steps += 1
                    // safe position
                    blueMap[positionS.first!][positionS.last! + 1] = "X"
                    positionS = [positionS.first!, positionS.last! + 1]
                }
                else {
                    positionS = positionSInitial
                    blueMap = w
                    steps = 0
                }
                
            } else if "G" == w[positionS.first!][positionS.last! + 1] {
                print ("rightG")
                // move right
                    steps += 1
                // safe position
                positionS = [positionS.first!, positionS.last! + 1]
                print ("Before")
            }
        }
//    }
//
//    if check == 1 {
        if w[positionS.first!].indices.contains(positionS.last! - 1) {
            if "0" == w[positionS.first!][positionS.last! - 1] && blueMap[positionS.first!][positionS.last! - 1] != "X" {
                print ("left")
                // move left
                if blueMap[positionS.first!][positionS.last! - 1] != "X" {
                    steps += 1
                    // safe position
                    blueMap[positionS.first!][positionS.last! - 1] = "X"
                    positionS = [positionS.first!, positionS.last! - 1]
                }
                else {
                    positionS = positionSInitial
                    blueMap = w
                    steps = 0
                }
                
            } else if "G" == w[positionS.first!][positionS.last! - 1] {
                print ("leftG")
                // move left
                    steps += 1
                // safe position
                positionS = [positionS.first!, positionS.last! - 1]
                print ("Before")
            }
        }
//    }
//
//    if check == 2 {
        if w.indices.contains(positionS.first! - 1) {
            if "0" == w[positionS.first! - 1][positionS.last!] && blueMap[positionS.first! - 1][positionS.last!] != "X" {
                print ("Up")
                // move up
                if blueMap[positionS.first! - 1][positionS.last!] != "X" {
                    steps += 1
                    // safe position
                    blueMap[positionS.first! - 1][positionS.last!] = "X"
                    positionS = [positionS.first!  - 1, positionS.last!]
                }
                else {
                    positionS = positionSInitial
                    blueMap = w
                    steps = 0
                }
            } else if "G" == w[positionS.first! - 1][positionS.last!] {
                print ("UpG")
                // move up
                    steps += 1
                // safe position
                positionS = [positionS.first! - 1, positionS.last!]
                print ("Before")
            }
        }
//    }
//
//    if check == 3 {
        if w.indices.contains(positionS.first! + 1) {
            if "0" == w[positionS.first! + 1][positionS.last!] && blueMap[positionS.first! + 1][positionS.last!] != "X" {
                print ("Down")
                // move down
                if blueMap[positionS.first! + 1][positionS.last!] != "X" {
                    steps += 1
                    // safe position
                    blueMap[positionS.first! + 1][positionS.last!] = "X"
                    positionS = [positionS.first!  + 1, positionS.last!]
                }
                else {
                    positionS = positionSInitial
                    blueMap = w
                    steps = 0
                }
                
            } else if "G" == w[positionS.first! + 1][positionS.last!] {
                print ("DownG")
                // move down
                    steps += 1
                // safe position
                positionS = [positionS.first! + 1, positionS.last!]
                print ("Before")
            }
        }
//    }
}

var minSteps = [Int]()
var xCount = 0

var check = true

outerloop: while (blueMap.flatMap {$0}).contains("0") && check {
    while positionS != positionG {
        print ("Hello")
        calculatePosition()
    }
    
    xCount += 1 //(blueMap.flatMap {$0}).filter { $0 == "X"}.count
//
//    blueMap = w
    print ("Location is:", positionS, steps, zero)
    print ("w:", xCount)
    print ("Blue:", blueMap[0])
    print ("Blue:", blueMap[1])
    print ("Blue:", blueMap[2])
    print ("Blue:", blueMap[3])
    print ("Blue:", blueMap[4])

//    if xCount >= 272 { // obtained via permutation
//        check = false
//    }

    minSteps.append(steps)
    steps = 0
    positionS = positionSInitial
    
}

print (minSteps.sorted())
print (Set(minSteps).sorted())
print (w)
print (blueMap[0])
print (blueMap[1])
print (blueMap[2])
print (blueMap[3])
print (blueMap[4])
