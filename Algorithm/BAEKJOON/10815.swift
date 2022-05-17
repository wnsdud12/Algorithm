readLine()
var arr1 = readLine()!.split{$0==" "}.map{Int($0)!}
readLine()
var arr2 = readLine()!.split{$0==" "}.map{Int($0)!}
var a = Set(arr2).intersection(arr1) // Set만 사용할 수 있는 교집합 찾는 메서드
var str = ""
arr2.forEach { i in
    if a.contains(i) {
        str += "1 "
    } else {
        str += "0 "
    }
}
print(str)
