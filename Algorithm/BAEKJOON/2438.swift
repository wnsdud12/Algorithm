var n = Int(readLine()!)!

var stars: String = ""
for i in 1 ... n {
    var index = i
    while index > 0 {
        stars += "*"
        index -= 1
    }
    stars += "\n"
}
print(stars)
