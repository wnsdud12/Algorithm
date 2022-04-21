import Foundation

var a = Int(readLine()!)!

var g: [[Int]] = []
for i in 0..<a {
    g.append(readLine()!.split{$0==" "}.map{Int($0)!})
}
for i in 0 ..< g.count {
    print(g[i][0] + g[i][1])
}
