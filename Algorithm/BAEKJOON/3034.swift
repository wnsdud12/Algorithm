var input = readLine()!.split{$0==" "}.map{Int($0)!}
for i in 0 ..< input[0] {
    var a = Int(readLine()!)!
    if a <= input[1] || a <= input[2] {
        print("DA")
    } else if a*a <= input[1]*input[1] + input[2]*input[2] { // 피타고라스의 정의로 대각선을 구해서 비교
        print("DA")
    } else {
        print("NE")
    }
}
