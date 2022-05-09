import Foundation

prefix operator **
prefix func **(value: Int) -> Int {
    return value * value
}

while let input = readLine(), input != "0 0 0" {
    let input = input.split{$0==" "}.map{**Int($0)!}
    if input[0] == input.max()! {
        if input[1] + input[2] == input[0] {
            print("right")
        } else {
            print("wrong")
        }
    } else if input[1] == input.max()! {
        if input[0] + input[2] == input[1] {
            print("right")
        } else {
            print("wrong")
        }
    } else {
        if input[0] + input[1] == input[2] {
            print("right")
        } else {
            print("wrong")
        }
    }
}
