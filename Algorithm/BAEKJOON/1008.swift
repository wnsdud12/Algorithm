import Foundation

var inputs = readLine()!.split{$0==" "}.map{Double($0)!}
print(inputs[0] / inputs[1])
