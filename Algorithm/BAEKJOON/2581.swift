var a = Int(readLine()!)!
var b = Int(readLine()!)!

var min = -1
var sosus: [Int] = []

for i in a ... b {
    if i <= 1 {
        continue
    }
    if i == 2 {
        sosus.append(2)
        continue
    }
    var sosu = true
    for j in 2 ..< i {
        if i % j == 0 {
            sosu = false
        }
    }
    if sosu {
        sosus.append(i)
    }
}
if !sosus.isEmpty {
    print("\(sosus.reduce(0,+))\n\(sosus.min()!)")
} else {
    print(-1)
}
