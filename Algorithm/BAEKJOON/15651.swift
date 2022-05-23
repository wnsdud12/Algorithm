import Foundation
func dfs(_ n: Int, _ m: Int, depth: Int = 0) {
    if depth == m {
        str += arr.map{String($0)}.joined(separator: " ") + "\n"
        return
    }
    for i in 0 ..< n {
        arr[depth] = i + 1
        dfs(n, m, depth: depth+1)
    }
}
let input = readLine()!.split{$0==" "}.map{Int($0)!}
let n = input[0]
let m = input[1]
var str = ""
var arr = Array(repeating: 0, count: m)
dfs(n, m)
print(str)
