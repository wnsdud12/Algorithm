import Foundation
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
func gold(num: Int, sosus: [Int]) -> (Int,Int) {
    var diff = num // 골드버그 파티션인 두 수의 차, 두 수의 차가 입력값보다 클 수 없어서 초기값을 입력값으로
    var partner: (Int,Int) = (0,0) // 골드버그 파티션인 두 수
    var sosus = sosus.filter{$0 < num} // 미리 구한 소수 중 입력값 보다 작은 수로 필터링
    for i in sosus {
        let ans = sosus.filter{$0 + i == num}
        if ans != [] {
            if diff >= abs(ans[0] - i) {
                diff = abs(ans[0] - i)
                partner = ans[0] < i ? (ans[0], i) : (i, ans[0])
            }
        }
    }
    return partner
}
var num = Int(readLine()!)!
var numbers: [Int] = []
for _ in 1 ... num {
    let input = Int(readLine()!)!
    numbers.append(input)
}
var sosus = eratos(num: numbers.max()!)
for i in numbers {
    var result = gold(num: i, sosus: sosus)
    print("\(result.0) \(result.1)")
}
