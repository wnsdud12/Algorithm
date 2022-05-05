import Foundation

var input = Int(readLine()!)!

for _ in 1 ... input {
    var k = Int(readLine()!)!
    var n = Int(readLine()!)!
    var arr: [Int] = []
    var nn = n // n을 나중에 또 써야되서 임시로 nn에 복사해놓음
    while nn > 0 {
        arr.append((1 ... nn).reduce(0,+)) // 1층의 각 방에 있는 사람 수, 1호 => 1, 2호 => 1+2, 3호 => 1+2+3 ...
        nn -= 1
    }
    if k == 1 { // 1층이면 1~n까지의 합
        print((1...n).reduce(0, +))
    } else if k == 2 { // 2층이면 미리 구해 놓은 1층 인원의 합
        print(arr.reduce(0,+))
    } else { // 3층에서 부터
        var multi = (1...n).map{$0} // arr의 각 index에 곱해줄 수
        var num = 3 // 3층부터 시작
        while num < k {
            // 초기화 된 arr 배열(3층) [1,2,3,4, ... ]에서 층 수가 높아질 때마다 각 인덱스는 전 인덱스만큼 더해진다
            /*
             [1,2,3,4, ...] -> [1,1+2=3,3+3=6,6+4=10, ...]
             */
            for i in 1..<arr.count {
                multi[i] += multi[i-1]
            }
            num += 1
        }
        var result: Int = 0
        for i in 0 ..< arr.count {
            // 같은 인덱스에 있는 값끼리 곱한 값을 모두 합쳐주면 정답
            // reduce 함수로 고칠 수 있을 것 같은데 더 연구해봐야할듯
            result += arr[i] * multi[i]
        }
        print(result)
    }
}
