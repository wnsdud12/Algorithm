import Foundation
var n = Int(readLine()!)!
var board: [[Bool]] = Array(repeating: [], count: n)
var queen: [[Int]] = Array(repeating: Array(repeating: 1, count: n), count: n)
// 1 = 갈 수 있음, 0 = 갈 수 없음, 2 = 현재 놓여있는 퀸 위치
for i in 1 ... n {
    for j in 1 ... n {
        board[i-1].append(true)
    }
}
board.forEach{print($0)}
queen.forEach{print($0)}
if n == 1 { // 1*1 공간에선 1개만 가능
    print(1)
} else if n <= 3 { // 2*2, 3*3 공간에서는 불가능
    print(0)
}
func
