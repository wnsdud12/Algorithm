import Foundation

/*
 1. 재귀적인 패턴으로 별을 찍어 보자. N이 3의 거듭제곱(3, 9, 27, ...)이라고 할 때, 크기 N의 패턴은 N×N 정사각형 모양이다.
 크기 3의 패턴은 가운데에 공백이 있고, 가운데를 제외한 모든 칸에 별이 하나씩 있는 패턴이다.
 2. N이 3보다 클 경우, 크기 N의 패턴은 공백으로 채워진 가운데의 (N/3)×(N/3) 정사각형을 크기 N/3의 패턴으로 둘러싼 형태이다.
 예를 들어 크기 27의 패턴은 예제 출력 1과 같다.
 3. 첫째 줄에 N이 주어진다. N은 3의 거듭제곱이다. 즉 어떤 정수 k에 대해 N=3k이며, 이때 1 ≤ k < 8이다.

 처음에 문자열로 문제를 풀다보니 도저히 답이 안나와서 2차열 배열로 풀게 되었다.
 우선 입력받는 값이 3일 때, 9일 때, 27일 때를 각각 그려놓고 규칙을 찾아봤는데
 제일 큰 사각형을 먼저 *로 채우고, 점점 작은 패턴을 만드는 식으로 하였다.

 빈 칸을 만드는 공식은
 문제에서 알려준 것처럼 k값 (n/3)을 구해주고
 배열의 인덱스를 n으로 나눴을 때 나머지가 k인 위치에서부터 k개만큼 *을 지워준다.

 예를 들어 9를 입력하면 9*9 크기의 배열에 *을 채워주고
 [
     ["*", "*", "*", "*", "*", "*", "*", "*", "*"],0
     ["*", "*", "*", "*", "*", "*", "*", "*", "*"],1
     ["*", "*", "*", "*", "*", "*", "*", "*", "*"],2
     ["*", "*", "*", "*", "*", "*", "*", "*", "*"],3
     ["*", "*", "*", "*", "*", "*", "*", "*", "*"],4
     ["*", "*", "*", "*", "*", "*", "*", "*", "*"],5
     ["*", "*", "*", "*", "*", "*", "*", "*", "*"],6
     ["*", "*", "*", "*", "*", "*", "*", "*", "*"],7
     ["*", "*", "*", "*", "*", "*", "*", "*", "*"],8
       0    1    2    3    4    5    6    7    8
 ]
 처음에는 n == 입력값이기 때문에 n = 9, k = n/3 = 3
 배열의 인덱스를 n으로 나눈 값이 k, 즉 3부터 3칸 지우는데 행과 열 모두 지워야 한다.
 지우는 인덱스값 = (3,3)~(5,3), (3,4)~(5,4), (3,5)~(5,5)
 n = 9, k = 3, i % n = k, k칸
 [
     ["*", "*", "*", "*", "*", "*", "*", "*", "*"],0
     ["*", "*", "*", "*", "*", "*", "*", "*", "*"],1
     ["*", "*", "*", "*", "*", "*", "*", "*", "*"],2
     ["*", "*", "*", " ", " ", " ", "*", "*", "*"],3
     ["*", "*", "*", " ", " ", " ", "*", "*", "*"],4
     ["*", "*", "*", " ", " ", " ", "*", "*", "*"],5
     ["*", "*", "*", "*", "*", "*", "*", "*", "*"],6
     ["*", "*", "*", "*", "*", "*", "*", "*", "*"],7
     ["*", "*", "*", "*", "*", "*", "*", "*", "*"],8
       0    1    2    3    4    5    6    7    8
 ]
 그 후 n != 3이기 때문에 n을 3으로 나눈 값인 k를 매개변수로 하여 stars()함수를 다시 실행
 이번에는 n = 3, k = 1
 지우는 값은 인덱스를 n으로 나눈 값이 1인 위치(1,4,7)를 1칸만 지운다.
 지우는 위치 = (1,1),(4,1),(7,1), (1,4),(4,4),(7,4), (1,7),(4,7),7,7) // (4,4)는 이미 지워져있다.
 [
     ["*", "*", "*", "*", "*", "*", "*", "*", "*"],0
     ["*", " ", "*", "*", " ", "*", "*", " ", "*"],1
     ["*", "*", "*", "*", "*", "*", "*", "*", "*"],2
     ["*", "*", "*", " ", " ", " ", "*", "*", "*"],3
     ["*", " ", "*", " ", " ", " ", "*", " ", "*"],4
     ["*", "*", "*", " ", " ", " ", "*", "*", "*"],5
     ["*", "*", "*", "*", "*", "*", "*", "*", "*"],6
     ["*", " ", "*", "*", " ", "*", "*", " ", "*"],7
     ["*", "*", "*", "*", "*", "*", "*", "*", "*"],8
       0    1    2    3    4    5    6    7    8
 ]
 n이 3이기 때문에 배열을 문자열로 바꿔서 출력해준 후 함수를 종료하면 끝난다.
 */

var star: [[String]] = []

func stars(_ n: Int) {
    let k = n/3
    for i in stride(from: k, to: input, by: n) {
        for j in stride(from: k, to: input, by: n) {
            for iIndex in i ..< i+k {
                for jIndex in j ..< j+k {
                    star[iIndex][jIndex] = " "
                }
            }
        }
    }
    if n != 3 {
        stars(k)
    } else {
        arrToStr(star)
        return
    }
}
func arrToStr(_ arr: [[String]]) {
    var str = ""
    for i in arr {
        str += i.joined()
        str += "\n"
    }
    print(str)
}
var input = Int(readLine()!)!
for i in 0 ..< input {
    star.append(Array<String>.init(repeating: "*", count: input))
}
stars(input)
