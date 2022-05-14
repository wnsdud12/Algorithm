var i = Int(readLine()!)!
typealias Point = (x:Int,y:Int)
var points: [Point] = []
for _ in 0 ..< i {
    var input = readLine()!.split{$0==" "}.map{Int($0)!}
    points.append((input[0],input[1]))
}
var sort = points.sorted{
    (lhs:Point, rhs: Point) -> Bool in
    if lhs.y < rhs.y {
        return true
    } else if lhs.y > rhs.y {
        return false
    } else {
        if lhs.x < rhs.x {
            return true
        } else {
            return false
        }
    }
}
for i in sort {
    print("\(i.x) \(i.y)")
}
