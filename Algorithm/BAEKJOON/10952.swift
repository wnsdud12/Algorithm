var zero = true

while zero {
    var inputs = readLine()!.split{$0==" "}.map{Int($0)!}
    if inputs[0] == 0, inputs[1] == 0 {
        break
    } else {
        print(inputs[0] + inputs[1])
    }
}
