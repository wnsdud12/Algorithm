import Foundation

var inputs = readLine()!.split{$0==" "}.map{Int($0)!}

var A = inputs[0]
var B = inputs[1]
var C = inputs[2]

print((A + B) % C)
print(((A % C) + (B % C)) % C)
print((A * B) % C)
print(((A % C) * (B % C)) % C)
