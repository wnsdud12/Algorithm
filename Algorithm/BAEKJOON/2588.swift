import Foundation

var a = Int(readLine()!)!
var b = readLine()!
var c: [Int] = []
b.forEach{ c.append(Int(String($0))!)}

var d = a * c[2]
var e = a * c[1]
var f = a * c[0]
var g = a * Int(b)!
print("\(d)\n\(e)\n\(f)\n\(g)")
