var input = Int(readLine()!)!
var ja = 1
var mo = 1
var i = 1
var jaChange = false
var moChange = true
while i != input {
    switch (jaChange, moChange) {
        case (false, true) where ja == 1:
            mo += 1
            i += 1
            if i != input {
                ja += 1
                mo -= 1
                i += 1
            }
        case (false, true):
            if mo > 1 {
                ja += 1
                mo -= 1
                i += 1
            } else {
                jaChange = true
                moChange = false
            }
        case (true, false) where mo == 1:
            ja += 1
            i += 1
            if i != input {
                ja -= 1
                mo += 1
                i += 1
            }
        case (true, false):
            if ja > 1 {
            ja -= 1
            mo += 1
            i += 1
            } else {
                jaChange = false
                moChange = true

            }
        default:
            break
    }
}
print("\(ja)/\(mo)")
/*
 분자가 1이 되면 분모를 1 올려주고 그 후 분자 +1, 분모 -1
 분모가 1이 되면 분자를 1 올려주고 그 후 분자 -1, 분모 +1
 */
