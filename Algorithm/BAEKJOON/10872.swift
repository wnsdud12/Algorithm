func factorial(num: Int) -> Int{
    if num > 1 {
        i *= num
        return factorial(num: num - 1)
    } else {
        return i
    }
}
var i = 1
var a = factorial(num: Int(readLine()!)!)
print(a)
