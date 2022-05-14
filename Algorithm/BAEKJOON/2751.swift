/*
 문제 설명
 시간 복잡도가 O(nlogn)인 정렬 알고리즘으로 풀 수 있습니다.
 예를 들면 병합 정렬, 힙 정렬 등이 있지만, 어려운 알고리즘이므로 지금은 언어에 내장된 정렬 함수를 쓰는 것을 추천드립니다.
 */

import Foundation
let fIO = FileIO()
var i = fIO.readInt()

var heap: [Int?] = [nil]
for _ in 0 ..< i {
    // 여기서 데이터가 들어올 때마다 힙생성
    heap.append(fIO.readInt())
}
heapify(heap.count)
var sorted: [Int] = Array(repeating: 0, count: heap.count)
heapSort()


// 내장된 정렬 함수
//var sorted = arr.sorted{$0<$1}

//병합 정렬(merge sort)
// 배열 반으로 나누기
func mergeSort(_ arr: [Int]) -> [Int] {
    guard arr.count > 1 else { return arr } // 배열의 count가 1이면 더 쪼갤 수 없으니 그냥 리턴
    let mid = arr.count / 2
    let left = Array(arr[0..<mid])
    let right = Array(arr[mid...arr.count-1])
    return merge(mergeSort(left), mergeSort(right)) // 쪼갠 배열을 정렬해서 합치기
}
// 쪼갠 배열을 정렬해서 합치기
func merge(_ left: [Int], _ right: [Int]) -> [Int] {
    var sorted: [Int] = []
    // left배열과 right배열의 count가 서로 다를 수 있기 때문에 인덱스도 2개
    var leftIndex = 0
    var rightIndex = 0
    // leftIndex와 rightIndex가 모두 서로의 배열의 count보다 작아야 함
    while leftIndex < left.count, rightIndex < right.count {
        if left[leftIndex] <= right[rightIndex] {
            sorted.append(left[leftIndex])
            leftIndex += 1
        } else {
            sorted.append(right[rightIndex])
            rightIndex += 1
        }
    }
    if leftIndex >= left.count { // left의 값들을 모두 sorted에 넣었다면, 남은 right를 모두 sorted에 넣기
        for i in rightIndex ..< right.count {
            sorted.append(right[i])
        }
    } else { // 반대
        for i in leftIndex ..< left.count {
            sorted.append(left[i])
        }
    }
    return sorted
}

//힙 정렬
/*
 힙정렬은 이상하게 인터넷에서 개념만 보고 내가 직접 짠 코드, 다른 언어의 예제를 보고 내가 새로 만든 코드, 다른 사람의 코드를 그대로 복사한 것
 모두 시간 초과가 나온다. 다른 문제도 풀어야 하니 힙 정렬은 일단 여기서 멈춤
 */
//힙 생성
func heapify(_ count: Int) {
    // 노드의 자식은 노드*2, 노드*2+1, 부모는 자식/2
    // 구현을 편하게 하기 위해 인덱스0은 사용하지 않는다함(처음에 생성할 때 nil을 넣었음)
    var index = count - 1
    if index > 1 {
        for i in stride(from: index, through: 1, by: -1) {
            var parent = index / 2
            while parent >= 1 {
                if heap[parent]! < heap[index]! {
                    heap.swapAt(parent, index)
                }
                index /= 2
                parent /= 2
            }
            index = i
        }
    }

}
func heapSort() {
    var count = i
    while count > 1 {
        heap.swapAt(1, count)
        heapify(count)
        count -= 1
    }
}

// 정렬된 배열 출력
var str = ""
for i in 1 ..< heap.count {
    str += "\(i)\n"
}
print(str)
