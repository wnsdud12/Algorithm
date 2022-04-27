var input = Int(readLine()!)!

var result: [Int] = []

for _ in 0 ..< input {
    result.append(input)
    input -= 1
}
let reverse: [Int] = result.reversed()

for i in reverse.indices {
    print(reverse[i])
}
