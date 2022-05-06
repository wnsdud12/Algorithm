readLine()
var inputs = readLine()!.split{$0==" "}.map{Int($0)!}
var count = 0
for i in inputs {
    if i <= 1 {
        continue
    }
    if i == 2 {
        count += 1
        continue
    }
    var sosu = true
    for j in 2 ..< i {
        if i % j == 0 {
            sosu = false
        }
    }
    if sosu {
        count += 1
    }
}
print(count)
