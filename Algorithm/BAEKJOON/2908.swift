func reverseInt(arr: [Character]) -> Int {
    var arr2 = arr.map{Int(String($0))!}
    var result = 0
    var multi = 1
    for i in 0 ..< arr.count {
        result += arr2[i] * multi
        multi *= 10
    }
    return result
}
var inputs = readLine()!.split{$0==" "}
var a: [Character] = Array(inputs[0])
var b: [Character] = Array(inputs[1])

var intA = reverseInt(arr: a)
var intB = reverseInt(arr: b)
intA > intB ? print(intA) : print(intB)
