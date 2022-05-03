var n = Int(readLine()!)!
var i = 1
var min = 1
var max = 1
while !(min...max).contains(n) {
    min = max + 1
    max = min + i * 6 - 1
    i += 1
}
print(i)
