var star =
"""
***
* *
***
"""
func stars(_ k: Int) {
    star = star + "\n" + star + "\n" + star
    print(star)
    stars(k-1)
}
var input = Int(readLine()!)!
var n = input
var k = 0
while input != 1 {
    input /= 3
    k += 1
}
stars(2)
