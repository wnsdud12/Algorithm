var inputs = readLine()!.split{$0==" "}.map{Int($0)!}
var numbers = readLine()!.split{$0==" "}.map{Int($0)!}

var result: [Int] = []
for i in numbers {
    if i < inputs[1] {
        result.append(i)
    }
}
var str = ""
for i in result {
    str += "\(i)" + " "
}
print(str)
