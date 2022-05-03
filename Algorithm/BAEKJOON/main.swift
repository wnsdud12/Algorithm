var input = readLine()!.split{$0==" "}.map{Double($0)!}
var a = input[0] // 낮에 올라가는 높이
var b = input[1] // 밤에 떨어지는 높이
var v = input[2] // 목표 높이
var h = 0 // 현재 높이
var d: Double = 1 // 날짜

/*
 (a-b)*d + a >= v
 (a-b)*d >= v-a
 d > (v-a)/(a-b)
 */
while (a-b) * d < v {
    if (a-b) * d + a >= v {
        d += 1
        break
    }
    d += 1
}
print(d)
/*
 2 1 5
 3/1
 5 1 6
 1/4
 */
