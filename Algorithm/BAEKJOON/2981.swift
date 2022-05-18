/*
 처음에는 1부터 쭉 돌면서 나머지가 같은 수를 찾았는데 시간초과되었다.
 찾아보니 입력으로 들어온 수의 차들의 최대공약수 (4개가 들어왔다면 array[0]-array[1], array[1]-array[2], array[2]-array[3]으로 나온 3개의 값들의 최대공약수) 를 구한 뒤 그 최대공약수의 약수를 구하면 된다고 하는데 왜 그런지는 아직 잘 모르겠다.
 이렇게 하고도 시간초과떄문에 한참 풀어봤는데 값이 크면 최대공약수도 엄청 커져서 최대공약수의 약수들을 찾는데도 시간이 오래걸려서 그런 것 같아 약수를 더 빠르게 찾는 방법을 찾아보니 구하려는 수의 제곱근까지만 찾아보면 된다고 한다.
 그래서 수정하니 바로 맞았다.
 */
import Foundation
// 최대공약수 구하는 함수
func getGCD(a: Int, b: Int) -> Int {
    if a == 0 || b == 0 {
        if a == 0 {
            return b
        } else {
            return a
        }
    }
    var n = 0
    if a > b {
        n = a % b
        return getGCD(a: n, b: b)
    } else if a < b {
        n = b % a
        return getGCD(a: a, b: n)
    } else {
        return a
    }
}
var i = Int(readLine()!)!
var arr: [Int] = []
for _ in 0 ..< i {
    arr.append(Int(readLine()!)!)
}
var diff: [Int] = []
var gcd = 0
for i in 0 ..< arr.count-1 {
    diff.append(abs(arr[i]-arr[i+1]))
    if diff.count == 1 {
        gcd = diff[0]
    } else if diff.count > 1 {
        gcd = getGCD(a: gcd, b: diff.last!)
    }
}
var result: Set<Int> = []
for i in 0 ... Int(sqrt(Double(gcd))) {
    guard i != 0 else { continue }
    if gcd.isMultiple(of: i) {
        let divide = gcd / i
        if i == 1 {
            result.insert(divide)
        } else if divide == 1 {
            result.insert(i)
        } else {
            result.insert(divide)
            result.insert(i)
        }
    }
}
var str = ""
result.sorted().forEach{
    str += "\($0) "
}
print(str)
