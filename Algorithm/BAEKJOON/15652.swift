import Foundation
func dfs(_ n: Int, _ m: Int, _ depth: Int) {
    if m == depth {
        arr.forEach{str += "\($0) "}
        str += "\n"
        return
    }
    for i in 0 ..< n {
        arr[depth] = i + 1
        if depth > 0, arr[depth] >= arr[depth-1] {
            dfs(n, m, depth+1)
        } else if depth == 0 {
            dfs(n, m, depth+1)
        }
    }
}
let input = readLine()!.split{$0==" "}.map{Int($0)!}
let n = input[0]
let m = input[1]
var str = ""
var arr = Array(repeating: 0, count: m)
dfs(n, m, 0)
print(str)

