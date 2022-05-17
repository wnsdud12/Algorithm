var num = Int(readLine()!)!
var arr: [[Int]] = []
var dict: [Int:Int] = [:]
var big = 1
var small = 0
for _ in 1 ... 6 {
    let input = readLine()!.split{$0==" "}.map{Int($0)!}
    arr.append(input)
    if dict[input[0]] == nil {
        dict[input[0]] = input[1]
    } else {
        dict[input[0]] = nil
    }
}
big = dict.values.reduce(1,*)
var i = arr.count
while i > 0 {
    if arr[0][0] == arr[2][0], arr[1][0] == arr[3][0] {
        small = arr[1][1] * arr[2][1]
        break
    }
    let tmp = arr.removeFirst()
    arr.append(tmp)
    i -= 1
}
print((big-small)*num)

