/*
 문제 설명 : 수의 범위가 작다면 카운팅 정렬을 사용하여 더욱 빠르게 정렬할 수 있습니다.
 */

import Foundation

// readLine() 함수로 데이터를 받으면 시간초과 되어 깃허브의 라이노님의 빠른 입출력 코드를 사용
final class FileIO {
    private let buffer:[UInt8]
    private var index: Int = 0

    init(fileHandle: FileHandle = FileHandle.standardInput) {

        buffer = Array(try! fileHandle.readToEnd()!)+[UInt8(0)] // 인덱스 범위 넘어가는 것 방지
    }

    @inline(__always) private func read() -> UInt8 {
        defer { index += 1 }

        return buffer[index]
    }

    @inline(__always) func readInt() -> Int {
        var sum = 0
        var now = read()
        var isPositive = true

        while now == 10
                || now == 32 { now = read() } // 공백과 줄바꿈 무시
        if now == 45 { isPositive.toggle(); now = read() } // 음수 처리
        while now >= 48, now <= 57 {
            sum = sum * 10 + Int(now-48)
            now = read()
        }

        return sum * (isPositive ? 1:-1)
    }

    @inline(__always) func readString() -> String {
        var now = read()

        while now == 10 || now == 32 { now = read() } // 공백과 줄바꿈 무시

        let beginIndex = index-1

        while now != 10,
              now != 32,
              now != 0 { now = read() }

        return String(bytes: Array(buffer[beginIndex..<(index-1)]), encoding: .ascii)!
    }

    @inline(__always) func readByteSequenceWithoutSpaceAndLineFeed() -> [UInt8] {
        var now = read()

        while now == 10 || now == 32 { now = read() } // 공백과 줄바꿈 무시

        let beginIndex = index-1

        while now != 10,
              now != 32,
              now != 0 { now = read() }

        return Array(buffer[beginIndex..<(index-1)])
    }
}
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
