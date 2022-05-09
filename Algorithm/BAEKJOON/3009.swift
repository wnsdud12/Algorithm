/*
 직사각형을 좌표로 표현하면
 (x,y)------(x+a,y)
 |                |
 |                |
 (x,y+b)--(x+a,y+b) 로 결국 x, y, x+a, y+b가 각각 2개씩 있어야 함
 입력값이 3개이므로 x와 x+a 중 하나, y와 y+b 중 하나는 1개밖에 없음
 ex)
 (5,5), (5,7), (7,5) 중에서는 x+a인 7과 y인 5가 1개밖에 없음
 이 문제를 풀 때는 x값을 모아놓은 배열과 y값을 모아놓은 배열을 각각 for문으로 돌려 겹칠 때마다 count를 1씩 올려주고
 count가 1인 값을 출력해주었는데

 XOR를 사용하여 풀면 더 간단하다는 것을 알게 되었다.
 2개의 값을 XOR로 비교하면 각 bit가 한쪽만 1(true)일 때 1(true)이 된다.
 똑같은 값을 XOR 연산하면 모든 bit가 똑같기 때문에 0이 된다.
 입력값의 각각의 x값을 XOR 연산해주면 결국 결괏값은 겹치지 않는 수가 된다.
 따라서 XOR를 사용하면 count 변수를 만들고 같은 값이 나올 때마다 1씩 올려주는 연산을 할 필요가 없다.
 */
// 내가 처음에 푼 방법
var a = readLine()!.split{$0==" "}.map{Int($0)!}
var b = readLine()!.split{$0==" "}.map{Int($0)!}
var c = readLine()!.split{$0==" "}.map{Int($0)!}

var x = [a[0],b[0],c[0]]
var y = [a[1],b[1],c[1]]

var xResult = 0
var yResult = 0
for i in x {
    var count = 0
    for j in x.indices {
        if i == x[j] {
            count += 1
        }
    }
    if count == 1 {
        xResult = i
    }
}
for i in y {
    var count = 0
    for j in y.indices {
        if i == y[j] {
            count += 1
        }
    }
    if count == 1 {
        yResult = i
    }
}
print("\(xResult) \(yResult)")


// XOR로 문제 풀기
/*
 ex) input (5,5), (5,7), (7,5)
 x 배열 = [5,5,7], y 배열 = [5,7,5]
 5 = 0101, 7 = 0111, x,y 초기값(0) = 0000
 x                      y
 0000 ^ 0101 = 0101     0000 ^ 0101 = 0101     index = 0
 0101 ^ 0101 = 0000     0101 ^ 0111 = 0010     index = 1
 0000 ^ 0111 = 0111(7)  0010 ^ 0101 = 0111(7)  index = 2
 결과 (7,7)
 */

//var x = 0
//var y = 0
//for _ in 0 ..< 3 {
//    var input = readLine()!.split{$0==" "}.map{Int($0)!}
//    x ^= input[0]
//    y ^= input[1]
//}
//print("\(x) \(y)")

