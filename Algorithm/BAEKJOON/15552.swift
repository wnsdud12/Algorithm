/*
 Swift의 기본 readLine() 함수로는 이 문제를 풀 수 없다고 하여
 https://gist.github.com/JCSooHwanCho/30be4b669321e7a135b84a1e9b075f88
 이 분의 FileIO 클래스를 가져와서 문제를 풀긴 했지만 나중에 이분의 코드도 이해하고 나만의 코드도 새로 만들어봐야 할 듯
 아직까진 도저히 모르겠다. readLine()으로는 왜 안되는지도 모르겠고(느려서 그렇다던데..)
 */

import Foundation

final class FileIO {
    private let buffer:[UInt8]
    private var index: Int = 0

    init(fileHandle: FileHandle = FileHandle.standardInput) {

        buffer = Array(try! fileHandle.readToEnd()!)+[UInt8(0)] // 인덱스 범위 넘어가는 것 방지
        print("///////")
        print("buffer")
        print(buffer)
        print("///////")
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

var n = fIO.readInt()

for _ in 0 ..< n {
    print(fIO.readInt() + fIO.readInt())
}

