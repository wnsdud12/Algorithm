import Foundation

var inputs = readLine()!.split{$0==" "}.map{Int($0)!}

if inputs[0] == inputs[1], inputs[0] == inputs[2] {
    print(10000 + (inputs[0] * 1000))
} else if (inputs[0] == inputs[1]) || (inputs[0] == inputs[2]) || (inputs[1] == inputs[2]) {
    if inputs[0] == inputs[1] {
        print(1000 + (inputs[0] * 100))
    } else if inputs[0] == inputs[2] {
        print(1000 + (inputs[0] * 100))
    } else if inputs[1] == inputs[2] {
        print(1000 + (inputs[1] * 100))
    }
} else {
    if inputs[0] > inputs[1], inputs[0] > inputs[2] {
        print(inputs[0] * 100)
    } else if inputs[1] > inputs[0], inputs[1] > inputs[2] {
        print(inputs[1] * 100)
    } else if inputs[2] > inputs[0], inputs[2] > inputs[1] {
        print(inputs[2] * 100)
    }
}
