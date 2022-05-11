var num = Int(readLine()!)!
var person: [(Int,Int,Int)] = []
for _ in 0 ..< num {
    var input = readLine()!.split{$0==" "}.map{Int($0)!}
    person.append((input[0],input[1],0))
}
for i in person.indices {
    var count = 1
    for j in person.indices {
        if i != j {
            if person[i].0 < person[j].0, person[i].1 < person[j].1 {
                count += 1
            }
        }
    }
    person[i].2 = count
}
var str = ""
for i in person {
    str += "\(i.2) "
}
print(str)
