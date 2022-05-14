/*
 문제 설명 : 수의 범위가 작다면 카운팅 정렬을 사용하여 더욱 빠르게 정렬할 수 있습니다.
 */

import Foundation

let fIO = FileIO()
var i = fIO.readInt()
var arr: [Int] = []
for _ in 0 ..< i {
    arr.append(fIO.readInt())
}
// 카운팅 정렬
func countingSort(_ arr: [Int]) -> [Int] {
    var countingArr: [Int] = Array(repeating: 0, count: arr.max()! + 1)
    var sorted: [Int] = Array(repeating: 0, count: arr.count + 1)
    for i in arr {
        countingArr[i] += 1
    }
    for i in 1 ..< countingArr.count {
        if i == 1 {
            countingArr[i] += countingArr[0]
        } else if i > 1 {
            countingArr[i] += countingArr[i-1]
        }
    }
    for i in stride(from: arr.count-1, through: 0, by: -1) {
       sorted[countingArr[arr[i]]] = arr[i]
        countingArr[arr[i]] -= 1
    }
    sorted.removeFirst()
    return sorted
}
var str = ""
for i in quickSort(arr) {
    str += "\(i)\n"
}
print(str)
