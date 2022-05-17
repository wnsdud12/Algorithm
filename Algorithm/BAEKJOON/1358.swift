prefix operator **
prefix func **(value: Int) -> Int {
    return value * value
}
var arr = readLine()!.split{$0==" "}.map{Int($0)!} // WHXYP
var count = 0
while let input = readLine(), input != "" {
    let point = input.split{$0==" "}.map{Int($0)!}
    var r = arr[1] / 2
    if **r >= (**(arr[2]-point[0]) + **((arr[3]+r)-point[1])) { //왼쪽 원 안에 있는지
        count += 1
    } else if **r >= (**((arr[2]+arr[0])-point[0]) + **((arr[3]+r)-point[1])) { // 오른쪽 원 안에 있는지
        count += 1
    } else if (arr[2]...(arr[2]+arr[0])).contains(point[0]), (arr[3]...(arr[3]+arr[1])).contains(point[1]) { // 가운데 사각형 안에 있는지
        count += 1
    }
}
print(count)
