var num = Int(readLine()!)!
for i in 0 ..< num {
    var input: [Character] = Array(readLine()!)
    var count = 0
    var sum = 0
    for j in input {
        if j == "O" {
            count += 1
            sum += count
        } else {
            count = 0
        }
    }
    print(sum)
}
