var i = Int(readLine()!)!
for _ in 0 ..< i {
    var n = readLine()!.split{$0==" "}.map{Int($0)!}
    n = n.sorted()
    var min = n.min()!
    var max = n.max()!
    // 유클리드 호제법으로 최대공약수 구하기(LCM). 큰 수를 작은 수로 나머지가 0이 될 때까지 계속 나누고, 나머지가 0이 되었을 때 작은 수가 최대공약수
    while max % min != 0 {
        var a = max % min
        max = min
        min = a
    }
    let lcm = min
    // 최소공배수 구하기(GCD). 두 수를 곱하고 최대공약수로 나누기
    let gcd = n.reduce(1,*) / lcm
    print(gcd)
}
