var input = Int(readLine()!)!

var result = 0
var index = 0
var left = 0
var right = 0
var num = 0
result = input
repeat {
    left = result % 10
    right = left + ((result - left) / 10)
    if right >= 10 {
        right %= 10
    }
    num = (left * 10) + right
    result = num
    index += 1
}while input != num
print(index)
