import Foundation
var arr: [String] = []
for _ in 0 ..< Int(readLine()!)! {
    arr.append(readLine()!)
}
var sort = Array(Set(arr)).sorted{
    (a: String, b: String) -> Bool in
    if a.count < b.count {
        return true
    } else if a.count > b.count {
        return false
    } else {
        if a < b {
            return true
        } else {
            return false
        }
    }
}
for i in sort {
    print(i)
}
