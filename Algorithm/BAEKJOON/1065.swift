// 이번 문제는 과거에 풀었던 문제 중에 더 나은 방법이 있나 살펴보다가 이번 문제 코드가 같이 들어있어 우연히 봐버렸다..ㅜㅜ
// 사실상 직접 푼 문제라고 볼 수 없으니 나중에 다시풀자
func hansu(_ n: Int) {
    var result = 0
    for i in 1 ... n {
        var arr: [Int] = []
        var m = i
        while m != 0 {
            arr.append(m % 10)
            m /= 10
        }
        switch i {
            case 0...9:
                result += 1
            case 10...99:
                result += 1
            default:
                let num = arr[1] - arr[0]
                var bool = false
                for i in 2 ..< arr.count {
                    if num == arr[i] - arr[i-1] {
                        bool = true
                    } else {
                        bool = false
                    }
                }
                if bool {
                    result += 1
                }
        }

    }
    print(result)
}
var input = Int(readLine()!)!
hansu(input)
