/*
 최대, 최솟값 구하는 문제
 min(), max() 함수로 풀면 간단하지만 그렇게 풀어서 코딩 실력에 도움이 될 것 같지는 않아 for-in 문으로 문제를 풀었다.
 처음 두번은 틀렸는데 코드가 비슷한데 어느 부분에서 틀렸는지 모르겠다.
 맞은 코드와의 차이는 max 변수의 초기값이랑 if문 2개를 if-else로 고친 것 뿐인데
 max를 0으로 한 이유는 min을 0으로 했을 때 입력값이 모두 0보다 크면 최솟값이 제대로 들어가지 않지만,
 max는 입력값이 모두 0보다 크기 때문에 상관 없을 것이라고 생각했었는데

 이유를 알았다... 문제를 제대로 안 본 내 잘못이었는데 입력값으로 음수도 가능해서 최대값이 0보다 작을 수도 있었다...
 // 틀린코드
 var input = Int(readLine()!)!
 var arr = readLine()!.split{$0==" "}.map{Int($0)!}
 var min = arr[0]
 var max = 0
 for i in arr {
    if min >= i {
        min = i
     }
     if max <= i {
        max = i
     }
 }
 print("\(min) \(max)")
*/
// 맞은코드
var input = Int(readLine()!)!
var arr = readLine()!.split{$0==" "}.map{Int($0)!}

var min = arr[0]
var max = arr[0]
for i in arr {
    if min >= i {
        min = i
    } else if max <= i {
        max = i
    }
}
print("\(min) \(max)")
