var input = readLine()!.split{$0==" "}.map{Int($0)!}
var min = 1
var max = input.max()!
for i in 1 ... input.min()! {
    if input[0].isMultiple(of: i), input[1].isMultiple(of: i) {
        min = i
    }
}
while !max.isMultiple(of: input.min()!) {
    max += input.max()!
}
print(min)
print(max)
