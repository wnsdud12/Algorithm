readLine()
var arr = readLine()!.split{$0==" "}.map{Int($0)!}
readLine()
var arr2 = readLine()!.split{$0==" "}.map{Int($0)!}
var dict: [Int:Int] = [:]
for i in arr {
    if dict[i] == nil {
        dict[i] = 1
    } else {
        dict[i]! += 1
    }
}
var str = ""
for i in arr2 {
    if dict[i] == nil {
        str += "0 "
    } else {
        str += "\(dict[i]!) "
    }
}
print(str)
