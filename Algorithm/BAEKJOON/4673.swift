func d(_ n: Int) -> Bool {
    var notSelfNumber: Bool = false
    for i in 0 ..< n {
        if n == (i + i%10 + i/10%10 + i/100%10 + i/1000%10 + i/10000) {
            notSelfNumber = true
        }
    }
    return !notSelfNumber
}
var result = ""
for i in 1 ... 10000 {
    if d(i) == true {
        result += "\(i)\n"
    }
}
print(result)
