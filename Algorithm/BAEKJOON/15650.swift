import Foundation

func dfs(_ n: Int, _ m: Int, _ depth: Int, _ result: inout [[Int]]) {
    if m == depth {
        let tmp = arr.sorted()
        if !result.contains(tmp) {
            result.append(tmp)
            var str = ""
            tmp.forEach{str += "\($0) "}
            print(str)
        }
        return
    }
    for i in 0 ..< n {
        if !visit[i] {
            visit[i] = true
            arr[depth] = i + 1
            dfs(n, m, depth+1, &result)
            visit[i] = false
        }
    }
}
var input = readLine()!.split{$0==" "}.map{Int($0)!}
var n = input[0]
var m = input[1]
var arr = Array(repeating: 0, count: m)
var visit = Array(repeating: false, count: n)
var result: [[Int]] = []
dfs(n, m, 0, &result)

