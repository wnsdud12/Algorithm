readLine()
var a = Set(readLine()!.split{$0==" "})
var b = Set(readLine()!.split{$0==" "})
print(a.subtracting(b).count + b.subtracting(a).count)
