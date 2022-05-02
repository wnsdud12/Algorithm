var input = Int(readLine()!)!

var count = 0
for _ in 1 ... input {
    var arr: [Character] = []
    var a: [Character] = Array(readLine()!)
    arr.append(a[0])
    var bool = false
    for i in 1 ..< a.count {
        if a[i] != a[i - 1], arr.contains(a[i]) {
            bool = true
        }
        arr.append(a[i])
    }
    if !bool {
        count += 1
    }
}
print(count)
