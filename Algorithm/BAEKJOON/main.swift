/*
 문제 설명
 시간 복잡도가 O(nlogn)인 정렬 알고리즘으로 풀 수 있습니다.
 예를 들면 병합 정렬, 힙 정렬 등이 있지만, 어려운 알고리즘이므로 지금은 언어에 내장된 정렬 함수를 쓰는 것을 추천드립니다.
 */

import Foundation
var i = Int(readLine()!)!
var array: [Int] = []
for _ in 0 ..< i {
    array.append(Int(readLine()!)!)
}
var tmp: [Int?] = Array<Int?>(repeating: nil, count: array.count)
print(array)
print(tmp)
mergeSort(array,0,array.count-1)

// 내장된 정렬 함수
//var sorted = arr.sorted{$0<$1}

//병합 정렬
func mergeSort(_ arr: [Int], _ left: Int, _ right: Int) {
    if left < right {
        let mid = (left + right) / 2
        let n = mid + 1
        mergeSort(arr, left, mid)
        mergeSort(arr, n, right)
        merge(arr, left, mid, right)
    }
}

//힙 정렬

// 정렬된 배열 출력
print("//////")
//for i in tmp {
//    print(i)
//}
print(array)
