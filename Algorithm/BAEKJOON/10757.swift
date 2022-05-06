/*
 원래는 큰 수를 입력받을 수 있는 새로운 자료형을 만들려고 했는데 방법을 못찾고
 배열로 받아서 더하는 방법을 알게 되서 이렇게 코드를 짜게 되었다.
 */
var inputs = readLine()!.split{$0==" "}
var left: [Int] = Array(inputs[0]).map{Int(String($0))!}
var right: [Int] = Array(inputs[1]).map{Int(String($0))!}
while left.count != right.count {
    left.count < right.count ? left.insert(0, at: 0) : right.insert(0, at: 0)
}
var result: [Int] = Array.init(repeating: 0, count: left.count)
result.append(0)
var lhs: [Int] = left.reversed()
var rhs: [Int] = right.reversed()
for i in lhs.indices {
    var sum = lhs[i] + rhs[i] + result[i]
    if sum >= 10 {
        result[i+1] += sum / 10
        result[i] = sum % 10
    } else {
        result[i] = sum
    }
}
var str = ""
if result.last! == 0 {
    result.removeLast()
}
for i in result.reversed() {
    str += String(i)
}
print(str)




