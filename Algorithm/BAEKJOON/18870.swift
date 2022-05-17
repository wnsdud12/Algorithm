import Foundation
let fIO = FileIO()
var i = fIO.readInt()
var arr: [Int] = []
for _ in 0 ..< i {
    arr.append(fIO.readInt())
}
var dict: [Int:Int] = [:]
var sort = Set(arr).sorted()
for i in 0 ..< sort.count {
    dict[sort[i]] = i
}
var str = ""
for i in 0 ..< arr.count {
    str += "\(dict[arr[i]]!) "
}
print(str)
