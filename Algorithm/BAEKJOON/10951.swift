while var inputs = readLine() { // readLine으로 값을 받아오지 않을 때 까지 반복
    var result = inputs.split{$0==" "}.map{Int($0)!}
    print(result[0] + result[1])
}
