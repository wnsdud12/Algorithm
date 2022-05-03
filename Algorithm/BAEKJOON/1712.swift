/*
 노트북 제조하는 회사
 A - 매년 임대료, 재산세, 보험료, 급여 등의 고정비용(만)
 B - 한 대의 노트북을 생산하는 데에 필요한 재료비와 인건비 등의 가변 비용(만)
 C - 노트북 가격
 X - 판매 갯수
 a + b * x < c * x 가 되어야 함
 식을 바꾸면
 bx+a < cx
 b + a/x < c
 a/x < c - b
 a < x * (c-b)
 a / (c-b) < x
 */
var input = readLine()!.split{$0==" "}.map{Int($0)!}
var i = 0
if input[2] - input[1] == 0 {
    print(-1)
} else {
    var i = input[0] / (input[2] - input[1]) + 1
    if i < 1 {
        print(-1)
    } else {
        print(i)
    }

}
