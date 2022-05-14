var input = Array(readLine()!).map{Int(String($0))!}
var result = input.sorted{$0>$1}.map{String($0)}.joined()
print(result)
