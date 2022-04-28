var arr: [Int] = []
for i in 1...9 {
    arr.append(Int(readLine()!)!)
}
var max = (arr[0],0)
for i in arr.indices {
    if arr[i] >= max.0 {
        max = (arr[i], i + 1)
    }
}
print(max.0)
print(max.1)
