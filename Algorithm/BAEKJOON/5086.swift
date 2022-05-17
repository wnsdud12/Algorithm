while let input = readLine(), input != "0 0" {
    let num = input.split{$0==" "}.map{Int($0)!}
    if num[0].isMultiple(of: num[1]) {
        print("multiple")
    } else if num[1].isMultiple(of: num[0]) {
        print("factor")
    } else {
        print("neither")
    }
}
