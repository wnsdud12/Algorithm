/*
 문제 설명
 시간 복잡도가 O(n²)인 정렬 알고리즘으로 풀 수 있습니다. 예를 들면 삽입 정렬, 거품 정렬 등이 있습니다.
 */
var i = Int(readLine()!)!
var arr: [Int] = []
for _ in 0 ..< i {
    arr.append(Int(readLine()!)!)
}

// 버블 정렬
func bubbleSort(_ arr: [Int]) -> [Int] {
    var sorted = arr
    for i in stride(from: sorted.count - 1, to: 0, by: -1) {
        for j in stride(from: 0, to: i, by: 1) {
            if sorted[j] > sorted[j+1] {
                sorted.swapAt(j,j+1)
            }
        }
    }
    return sorted
}
// 삽입 정렬
func insertionSort(_ arr: [Int]) -> [Int] {
    var sorted = arr
    var index = 1
    for i in stride(from: index, through: sorted.count - 1, by: 1) {
        for j in stride(from: i, to: 0, by: -1) {
            if sorted[j] < sorted[j-1] {
                sorted.swapAt(j, j-1)
            }
        }
        index += 1
    }
    return sorted
}

// 정렬된 배열 출력
for i in insertionSort(arr) {
    print(i)
}
