/*
 우선 최단으로 옮기는 방법은 2^n-1이다.
 각 위치에서 제일 위에 있는 원반만 옮길 수 있고, 각 원반은 본인보다 작은 원반 위에 있을 수 없다.
 시작위치를 from, 목표를 to라고 했을 때 중간에 거쳐가는 곳도 필요해 거쳐가는 곳을 via라고 정했다, 원반을 크기에 따라 1 이상의 수로 생각할 때
 원반 수가 1개일 때는 1원반을 from에서 to로 한번만 움직이면 끝난다.

 원반이 여러개(n)면
 1. 제일 큰 원반을 뺀 나머지를 via에 옮겨주고(hanoi(n-1,_,_,_))
 2. 제일 큰 원반을 to에 옮긴 후(hanoiPrint(_,_)
 3. via에 있는 나머지 원반들을 to로 옮겨줘야 한다.(hanoi(n-1,_,_,_))
 1,3번을 할 때에도 나머지 원반이 여러 개면 1~3을 또 해줘야 한다.
 */
var input = Int(readLine()!)!
var num = 1
for _ in 1 ... input { num *= 2 }
print(num-1)
hanoi(input, from: 1, via: 2, to: 3)
func hanoiPrint(_ n: Int,_ from: Int,_ to: Int) { print("\(from) \(to)") }
func hanoi(_ n: Int, from: Int, via: Int, to: Int) {
    if n == 1 {
        hanoiPrint(n, from, to)
    } else {
        hanoi(n-1, from: from, via: to, to: via)
        hanoiPrint(n, from, to)
        hanoi(n-1, from: via, via: from, to: to)
    }
}
/*
 321을 옮기려면
 21 from -> via
 3 from -> to
 21 via -> to

 4321을 옮기려면
 321 from -> via
 4 from -> to
 321 via -> to
 */
