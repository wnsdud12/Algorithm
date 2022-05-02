/*
 이 문제는 틀린 횟수가 많았는데
 1. 입력으로 주어진 단어가 몇 개의 크로아티아 알파벳으로 이루어져 있는지 출력한다.라는 문장을 보고 'dz=dz='처럼 똑같은 문자가 반복되면 한 종류의 반복이니 카운트를 1만 하는 것으로 착각함
 2. 'dz=dz='이나 'njnj' 같이 반복했을 때 dz=, d, z=이나 nj, n, j로 갯수를 셈(문제를 잘못 해석)
 3. 알파벳만 세야 하는데 '===='같이 특수문자의 반복도 카운트
 4. 대문자나 =, -가 아닌 특수문자를 카운트하지 않게 코드 수정하다가 꼬여서 틀림 (이때부터 인터넷 검색 시작... 물론 코드를 그대로 베끼진 않았음 절대!)
 5. 인터넷에 올라온 반례 코드들을 입력해서 이상이 없어서 다시 제출했는데 출력 카운트를 보기 쉽게 해놓는다고
    print("count => \(count)")라고 적어놓은 것을 고치지 않아 또 잔뜩 틀리다가 결국 눈치채고 해결......
 */
var input: [Character] = Array(readLine()!.lowercased())

let croatia = ["c=", "c-", "dz=", "d-", "lj", "nj", "s=", "z="]
var i = 0
var count = 0
while i < input.count {
    print(i)

    if i + 1 < input.count, croatia.contains("\(input[i])\(input[i+1])") {
        count += 1
        i += 2
        continue
    } else if i + 2 < input.count, croatia.contains("\(input[i])\(input[i + 1])\(input[i + 2])") {
        count += 1
        i += 3
        continue
    } else if !(97...122).contains(input[i].asciiValue!) {
        i += 1
        continue
    } else {
        count += 1
        i += 1
        continue
    }
}

print("count => \(count)")
