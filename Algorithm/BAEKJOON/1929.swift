var inputs = readLine()!.split{$0==" "}.map{Int($0)!}
var eratos: [Int] = Array(inputs[0]...inputs[1])
if eratos.contains(1) {
    eratos.remove(at: eratos.firstIndex(of: 1)!)
}
var i = 2
var arr: [Int] = []

var j = 1
while j*j < inputs[1] {
    j += 1
}
while !eratos.isEmpty, i <= j {
    if !eratos.allSatisfy({ !$0.isMultiple(of: i)}) {
        eratos = eratos.filter{!$0.isMultiple(of: i)}
        if (inputs[0] ... inputs[1]).contains(i) {
            print(i)
        }
    }
    i += 1
}
var str = eratos.reduce("") { result, i in
    return result + "\(i)\n"
}
print(str)
