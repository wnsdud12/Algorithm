// 에라토스테네스의 체를 함수로
func eratos(num: Int) -> [Int] {
    var numbers = Array<Int>(2...num)
    var sosuArr: [Int] = []
    var i = 1
    while i*i < num {
        i += 1
    }
    var j = 2
    while j <= i {
        if !numbers.allSatisfy({!$0.isMultiple(of: j)}) {
            numbers = numbers.filter{!$0.isMultiple(of: j)}
            sosuArr.append(j)
        }
        j += 1
    }
    sosuArr += numbers
    return sosuArr
}
var inputs: [Int] = []
/*
 eratos 함수를 input 수 만큼 실행했더니 시간초과
 -> 1 ~ (입력 값 중 가장 큰 수 * 2) 범위의 소수를 eratos 함수로 받아오고 (함수를 한 번만 사용하기 위해)
    각각의 입력값(n) 보다 크고 2n 보다 작거나 같은 소수를 filter 함수로 필터링하고 그 갯수를 출력
*/
while var input = readLine(), input != "0" {
    inputs.append(Int(input)!)
}
var sosus = eratos(num: inputs.max()! * 2)

for i in inputs.indices {
    let min = inputs[i] + 1
    let max = inputs[i] * 2
    print(sosus.filter{(min...max).contains($0)}.count)
}
