var input = Int(readLine()!)!
var num = 1
var count = 0
while true {
    if num.isSix() {
        count += 1
        guard count != input else {
            print(num)
            break
        }
    }
    num += 1
}
extension Int {
    func isSix() -> Bool {
        var arr = Array(String(self)).map{Int(String($0))!}
        var check = 0
        for i in arr {
            if i == 6 {
                check += 1
            } else {
                check = 0
            }
            if check == 3 {
                return true
            }
        }
        return false
    }
}
