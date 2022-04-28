var num = Double(readLine()!)!
var inputs = readLine()!.split{$0==" "}.map{Int($0)!}
var max = inputs[0]
for i in inputs {
    if i >= max {
        max = i
    }
}
var outputs: Double = inputs.map{Double($0) / Double(max) * 100}.reduce(0,+)
print(outputs/num)

