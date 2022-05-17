/*
 딕셔너리로 풀려고 생각하고 포켓몬 번호와 이름을 딕셔너리로 넣고([번호:이름]) for-in문으로 돌리면서 숫자가 들어오면 딕셔너리의 value값, 이름이 들어오면 key값을 반환해주면 되겠다고 생각했는데 key값을 꺼내주는게 생각보다 복잡해서 filter랑 map이랑 다 쓰다 보니깐 시간초과 된듯해서 딕셔너리를 [이름:번호]로도 바꿔보고 배열만 써보고 했는데
 결국 찾은 답은 이름만 모은 배열(0번은 없으니 빈 값을 미리 넣고), 이름과 번호가 같이 있는 딕셔너리([이름:번호]) 두개를 다 만들어 주니 해결됐다.
 */
var num = readLine()!.split{$0==" "}.map{Int($0)!}
var arr1 = [""]
var dict: [String:Int] = [:]
for i in 1 ... num[0] {
    var input = readLine()!
    arr1.append(input)
    dict[input] = i
}
for _ in 0 ..< num[1] {
    let input = readLine()!
    if let input = Int(input) {
        print(arr1[input])
    } else {
        print(dict[input]!)
    }
}
