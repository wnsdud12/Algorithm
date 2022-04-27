var n = Int(readLine()!)!

for i in 1 ... n {
    var inputs = readLine()!.split{$0==" "}.map{Int($0)!}
    var result = inputs[0] + inputs[1]
    print("Case #\(i): \(result)")
}
