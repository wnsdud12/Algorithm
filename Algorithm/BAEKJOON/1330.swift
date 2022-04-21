\import Foundation

let inputs = readLine()!.split{$0==" "}.map{Int($0)!}
let a = inputs[0]
let b = inputs[1]

if a > b {
    print(">")
} else if a < b {
    print("<")
} else if a == b {
    print("==")
}
