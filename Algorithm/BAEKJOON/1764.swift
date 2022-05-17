var i = readLine()!.split{$0==" "}.map{Int($0)!}
var set = Set<String>()
var set2 = Set<String>()
for _ in 0 ..< i[0] {
    set.insert(readLine()!)
}
for _ in 0 ..< i[1] {
    set2.insert(readLine()!)
}
var result = set.intersection(set2).sorted{$0 < $1}
print(result.count)
result.forEach{print($0)}
