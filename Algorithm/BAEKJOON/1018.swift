// B(true) 부터 시작하는 8*8의 체스판
var blackStartBoard: [[Bool]] = {
    var board: [[Bool]] = []
    var color = true
    for _ in 0 ..< 8 {
        var arr: [Bool] = []
        for _ in 0 ..< 8 {
            arr.append(color)
            color = !color
        }
        board.append(arr)
        color = !color
    }
    return board
}()
// W(false) 부터 시작 할 수 있게 blakcStartBoard의 각 칸의 값들을 뒤집음
var whiteStartBoard: [[Bool]] = blackStartBoard.map { small -> [Bool] in
    var arr: [Bool] = []
    for i in small {
        arr.append(!i)
    }
    return arr
}

var input = readLine()!.split{$0==" "}.map{Int($0)!}

var board: [[Bool]] = {
    var board: [[Bool]] = []
    for _ in 0 ..< input[0] {
        let arr = Array(readLine()!)
        var change: [Bool] = []
        for i in arr {
            if i == "B" {
                change.append(true)
            } else {
                change.append(false)
            }
        }
        board.append(change)
    }
    return board
}()

var countArr: [Int] = []
var count = 0

// 시작 위치
for m in 0 ... input[1] - 8 {
    for n in 0 ... input[0] - 8 {
        // 시작 위치에서 8*8만큼만 비교
        // 미리 만들어 둔 blackStartBoard와 비교하여 각 칸이 다를 때마다 count하고 비교가 끝나면 countArr에 넣어주고,
        // whiteStartBoard와 똑같이 비교하고 count하고 countArr에 넣음
        for i in 0 ..< 8 {
            for j in 0 ..< 8 {
                if blackStartBoard[j][i] != board[n+j][m+i] {
                    count += 1
                }
            }
        }
        countArr.append(count)
        count = 0
        for i in 0 ..< 8 {
            for j in 0 ..< 8 {
                if whiteStartBoard[j][i] != board[n+j][m+i] {
                    count += 1
                }
            }
        }
        countArr.append(count)
        count = 0
    }
}
print(countArr.min()!)

