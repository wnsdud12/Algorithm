/*
 문제 : 입력의 첫 줄에는 테스트 케이스의 개수 T가 주어진다. 그 다음 줄부터 각각의 테스트케이스에 대해 첫째 줄에 출발점 (x1, y1)과 도착점 (x2, y2)이 주어진다. 두 번째 줄에는 행성계의 개수 n이 주어지며, 세 번째 줄부터 n줄에 걸쳐 행성계의 중점과 반지름 (cx, cy, r)이 주어진다.
 예상 : 시작 점을 감싸고 있는 원의 갯수랑 도착점을 감싸고 있는 원의 갯수를 세면 될듯
 공식을 찾아보니 (원의 중심x좌표 - 출발(도착)점의x좌표)^2 + (원의 중심y좌표 - 출발(도착)점의y좌표)^2이 반지름 보다 작으면 원 안에 있는 듯함
 위 공식으로 해결 했고, 주의할 점은 출발점과 도착점 두 곳 다 같은 원 안에 있으면 안된다.(다른 행성계에 진입(이탈)하지 않고 도착하기 때문)
*/
struct Point {
    let x: Int
    let y: Int
    func isPointInCircle(x: Int, y: Int, r: Int) -> Bool {
        var distance = (x - self.x)*(x - self.x) + (y - self.y)*(y - self.y)
        if distance > r*r {
            return false
        } else {
            return true
        }
    }
}
var T = Int(readLine()!)!
for _ in 0 ..< T {
    let input = readLine()!.split{$0==" "}.map{Int($0)!}
    let start = Point(x: input[0], y: input[1])
    let end = Point(x: input[2], y: input[3])
    var count = 0
    let n = Int(readLine()!)!
    for _ in 0 ..< n {
        let circle = readLine()!.split{$0==" "}.map{Int($0)!}
        var fromStart = start.isPointInCircle(x: circle[0], y: circle[1], r: circle[2])
        var toEnd = end.isPointInCircle(x: circle[0], y: circle[1], r: circle[2])
        switch (fromStart, toEnd) {
            case (true, true):
                fallthrough
            case (false, false):
                continue
            case (false, true):
                fallthrough
            case (true, false):
                count += 1
        }
    }
    print(count)
}
