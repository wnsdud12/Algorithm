var num = ["ABC","DEF","GHI","JKL","MNO","PQRS","TUV","WXYZ"]
var input = Array(readLine()!)
var index = 0
for i in input {
    switch i {
        case "A", "B", "C":
            index += 3
        case "D", "E", "F":
            index += 4
        case "G", "H", "I":
            index += 5
        case "J", "K", "L":
            index += 6
        case "M", "N", "O":
            index += 7
        case "P", "Q", "R", "S":
            index += 8
        case "T", "U", "V":
            index += 9
        case "W", "X", "Y", "Z":
            index += 10
        default:
            break
    }
}
print(index)
