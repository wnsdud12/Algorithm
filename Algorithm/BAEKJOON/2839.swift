var input = Int(readLine()!)!
var x = 0
var y = 0

while input >= 5 {
    if input >= 5 {
        input -= 5
        x += 1
    }
}
while input > 0 {
    if input == 3 {
        input -= 3
        y += 1
    } else {
        input += 5
        x -= 1
        if input % 3 == 0 {
            while input > 0 {
                input -= 3
                y += 1
            }
        }
    }
}
if x < 0 || y < 0 {
    print(-1)
} else {
    print(x+y)
}
