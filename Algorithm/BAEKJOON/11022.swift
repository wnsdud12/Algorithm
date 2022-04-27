var n = Int(readLine()!)!

for i in 1 ... n {
    var inputs = readLine()!.split{$0==" "}.map{Int($0)!}
    print("Case #\(i): \(inputs[0]) + \(inputs[1]) = \(inputs[0] + inputs[1])")
}
