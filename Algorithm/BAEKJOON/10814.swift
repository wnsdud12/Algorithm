var arr: [[String]] = []
for _ in 0 ..< Int(readLine()!)! {
    let input = readLine()!.split{$0==" "}
    arr.append([String(input[0]),String(input[1])])
}
var sort = arr.sorted{Int($0[0])! < Int($1[0])!} // String으로 받아온 문자를 비교할 때 String은 Characacter의 배열이라 그런지 "10"과 "2"를 비교하면 ["1","0"]과 ["2"]로 바꿔서 첫 인덱스 중 2가 더 크다고 추력해서 Int로 변환해서 비교했다

sort.forEach{print("\($0[0]) \($0[1])")}
