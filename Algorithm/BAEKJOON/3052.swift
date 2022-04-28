var i = 0
var inputs: [Int] = [] // 입력값 배열
while i < 10 {
    inputs.append(Int(readLine()!)!)
    i += 1
}
i = 0
var remain: [Int] = [] // 42로 나눈 나머지 배열
while i < 10 {
    remain.append(inputs[i] % 42)
    i += 1
}
var result: [Int] = [] // 나머지가 서로 다른값을 모아놓은 배열

for j in remain {
    if !result.contains(j) {
        result.append(j)
    }
}
print(result.count)
