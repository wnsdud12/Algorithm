func GCD(a: Int, b: Int) -> Int {
    if a == 0 || b == 0 {
        if a == 0 {
            return b
        } else {
            return a
        }
    }
    var n = 0
    if a > b {
        n = a % b
        return GCD(a: n, b: b)
    } else if a < b {
        n = b % a
        return GCD(a: a, b: n)
    } else {
        return a
    }
}

var i = Int(readLine()!)!
var input = readLine()!.split{$0==" "}.map{Int($0)!}
var first = input.removeFirst()

for i in input {
    var gcd = GCD(a: first, b: i)
    print("\(first/gcd)/\(i/gcd)")
}

