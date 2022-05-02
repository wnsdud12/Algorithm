var input: [Character] = Array(readLine()!.uppercased())

var dict: [String:Int] = [:]
for i in input {
    if dict.keys.contains(String(i)) {
        dict[String(i)] = dict[String(i)]! + 1
    } else {
        dict[String(i)] = 1
    }
}
var sorted = dict.sorted{$0.value > $1.value}
if sorted.count == 1 {
    print(sorted[0].key)
} else if sorted[0].value == sorted[1].value {
    print("?")
} else {
    print(sorted[0].key)
}
