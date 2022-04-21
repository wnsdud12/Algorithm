import Foundation

var input = Int(readLine()!)!
switch input {
    case (90...100):
        print("A")
    case (80...89):
        print("B")
    case (70...79):
        print("C")
    case (60...69):
        print("D")
    case (0...59):
        print("F")
    default:
        print("error - 100보다 작은 수를 입력하세요.")

}
