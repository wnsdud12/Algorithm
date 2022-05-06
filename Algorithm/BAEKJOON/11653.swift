var input = Int(readLine()!)!
var sosus: [Int] = []
var i = 2
while input > 1 {
    if input.isMultiple(of: i) {
        input /= i
        print(i)
        i = 2
    } else {
        i += 1
    }
}

