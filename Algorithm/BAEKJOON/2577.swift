var a = Int(readLine()!)!
var b = Int(readLine()!)!
var c = Int(readLine()!)!

var multi = a * b * c
var charArr: [Character] = Array(String(multi))

var i = 0
var count = 0
var result = ""
while i < 10 {
    for char in charArr {
        if Int(String(char))! == i {
            count += 1
        }
    }
    result += "\(count)\n"
    count = 0
    i += 1
}
print(result)
