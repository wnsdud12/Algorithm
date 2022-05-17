var input: [Character] = Array(readLine()!)
var set: Set<String> = []
for i in 0 ..< input.count {
    for j in i ..< input.count {
        set.insert(String(input[i...j]))
    }
}
print(set.count)

