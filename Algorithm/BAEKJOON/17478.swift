var intro = "어느 한 컴퓨터공학과 학생이 유명한 교수님을 찾아가 물었다."
var str1 = "\"재귀함수가 뭔가요?\""
var str2 = "\"잘 들어보게. 옛날옛날 한 산 꼭대기에 이세상 모든 지식을 통달한 선인이 있었어."
var str3 = "마을 사람들은 모두 그 선인에게 수많은 질문을 했고, 모두 지혜롭게 대답해 주었지."
var str4 = "그의 답은 대부분 옳았다고 하네. 그런데 어느 날, 그 선인에게 한 선비가 찾아와서 물었어.\""
var str5 = "____라고 답변하였지."
var last = "\"재귀함수는 자기 자신을 호출하는 함수라네\""
func recursion(_ input: Int) {
    defer {
        str5.removeFirst(4)
    }
    if input > 0 {
        print(str1)
        str1 = "____" + str1
        print(str2)
        str2 = "____" + str2
        print(str3)
        str3 = "____" + str3
        print(str4)
        str4 = "____" + str4
        last = "____" + last
        str5 = "____" + str5
        recursion(input - 1)
        print(str5)
    } else {
        print(str1)
        print(last)
    }
}
var input = Int(readLine()!)!
print(intro)
recursion(input)
print(str5)
