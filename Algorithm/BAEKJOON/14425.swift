var set: Set<String> = []
var arr: [String] = []
var i = readLine()!.split{$0==" "}.map{Int($0)!}
for _ in 0 ..< i[0] {
    set.insert(readLine()!)
}
for _ in 0 ..< i[1] {
    arr.append(readLine()!)
}
var count = arr.reduce(into: 0) { partialResult, i in
    if set.contains(i) {
        partialResult += 1
    }
}
print(count)
