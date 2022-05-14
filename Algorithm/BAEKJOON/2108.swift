import Foundation

let input = Int(readLine()!)!
var arr: [Int] = []
for _ in 0 ..< input {
    arr.append(Int(readLine()!)!)
}
var result = ""
var average = Double(arr.reduce(0, +)) / Double(input)
result += "\(Int(round(average)))\n"
let mid = arr.sorted()[arr.count / 2]
result += "\(mid)\n"
arr = arr.sorted()
let bin: Int = {
    var count = 1
    var counting: [(value: Int,count: Int)] = []
    if arr.count == 1 {
        return arr[0]
    }
    for i in 1 ..< arr.count {
        if arr[i] == arr[i-1] {
            count += 1
        } else {
            counting.append((arr[i-1],count))
            count = 1
        }
        if i == arr.count-1 {
            counting.append((arr[i],count))
        }
    }
    counting = counting.sorted{$0.count>$1.count}
    if counting[0].count == counting[1].count {
        return counting[1].value
    } else {
        return counting[0].value
    }
}()
result += "\(bin)\n"
let range = arr.last! - arr[0]
result += "\(range)"

print(result)
