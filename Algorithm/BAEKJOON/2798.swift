var num = readLine()!.split{$0==" "}.map{Int($0)!}

var inputs = readLine()!.split{$0==" "}.map{Int($0)!}
var arr: [Int] = []
for i in inputs.indices {
    for j in inputs.indices {
        for k in inputs.indices {
            if i != j, i != k, j != k {
                let sum = inputs[i]+inputs[j]+inputs[k]
                if sum <= num[1] {
                    arr.append(sum)
                }
            }
        }
    }
}
print(arr.sorted{$0>$1}[0])
