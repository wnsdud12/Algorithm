func fibonacci(lhs: Int, rhs: Int) {
    if n == 0 {
        print(0)
    } else if n == 1 {
        print(1)
    } else {
        if i <= n {
            i += 1
            return fibonacci(lhs: rhs, rhs: lhs + rhs)
        } else {
            print(rhs)
        }
    }
}
var i = 2
var n = Int(readLine()!)!
fibonacci(lhs: 0, rhs: 1)
