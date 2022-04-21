import Foundation

var inputs = readLine()!.split{$0 == " "}.map{Int($0)!}

print(inputs[0] - inputs[1])
