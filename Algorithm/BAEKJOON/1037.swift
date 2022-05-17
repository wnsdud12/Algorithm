_ = readLine()
var num = Set(readLine()!.split{$0==" "}.map{Int($0)!}).sorted{$0<$1}
print(num.min()! * num.max()!)

