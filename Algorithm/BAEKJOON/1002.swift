/*
 처음에는 바로 직전에 풀었던 3053문제처럼 택시 기하학을 사용하여 푸는 줄 알고 (x1,y1)에서 r1만큼 떨어져 있는 모든 값을 구하여 배열 arr1로 만들고
 (x2,y2)에서 r2만큼 떨어져 있는 값을 하나하나 구하면서 arr1에 포함되어 있는지 확인하여 그 수를 출력했다.
 당연하게도 실패하여 문제를 다시 읽어보니 답이 무한대일 가능성이 있다고 하는데 택시 방정식이면 무한대일 리가 없다고 생각하여 일반 기하학으로 풀게 되었다.
 */
import Foundation
for _ in 0 ..< Int(readLine()!)! {
    let inputs = readLine()!.split{$0==" "}.map{Double($0)!}

    if inputs[0] == inputs[3], inputs[1] == inputs[4], inputs[2] == inputs[5] {
        // 동일한 크기의 원이면 무한대, -1 출력
        print(-1)
    } else {
        //두 원의 중심 사이의 거리 d = √(x2-x1)^2+(y2-y1)^2
        let d = sqrt((inputs[3] - inputs[0])*(inputs[3] - inputs[0])+(inputs[4] - inputs[1])*(inputs[4] - inputs[1]))
        if abs(inputs[2] - inputs[5]) < d, d < inputs[2]+inputs[5] {
            // 두 원의 반지름의 차가 d보다 작고, 두 원의 반지름의 합이 d보다 크면 두 점에서 만남
            print(2)
        } else if (inputs[2] + inputs[5] == d) || (abs(inputs[2] - inputs[5]) == d) {
            // 두 원의 반지름의 차 또는 합이 d와 같으면 한 점에서 만남
            print(1)
        } else if (inputs[2] + inputs[5] < d) || (d < abs(inputs[2] - inputs[5])) {
            // 두 원의 반지름의 차가 d보다 작거나 두 원의 반지름의 합이 d보다 크면 만나지 않음
            print(0)
        }
    }
}
