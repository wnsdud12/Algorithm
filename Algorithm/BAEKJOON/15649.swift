import Foundation
func dfs(_ n: Int, _ m: Int, depth: Int) {
    if depth == m {
        var str = ""
        arr.forEach{str += "\($0) "}
        print(str)
        return
    }
    for i in 0 ..< n {
        if !visit[i] {
            visit[i] = true
            arr[depth] = i + 1
            dfs(n, m, depth: depth+1)
            visit[i] = false
        }
    }
}
var input = readLine()!.split{$0==" "}.map{Int($0)!}
var n = input[0]
var m = input[1]
var arr: [Int] = Array(repeating: 0, count: m)
var visit: [Bool] = Array(repeating: false, count: n)

dfs(n, m, depth: 0)
