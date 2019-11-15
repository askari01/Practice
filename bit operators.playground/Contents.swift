import Cocoa

var one = 0b00000100 // 1
var two = 0b00000010 // 2
var oneM = 0b10000100 // -1
var twoM = -2
var t1 = true
var t2 = false

print (~one)

let pink: UInt32 = 0xCC6699
let redComponent = (pink & 0xFF0000) >> 16    // redComponent is 0xCC, or 204
let greenComponent = (pink & 0x00FF00) >> 8   // greenComponent is 0x66, or 102
let blueComponent = pink & 0x0000FF           // blueComponent is 0x99, or 153
