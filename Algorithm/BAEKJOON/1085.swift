var inputs = readLine()!.split{$0==" "}.map{Int($0)!}
//var x = inputs[0]
//var y = inputs[1]
//var w = inputs[2]
//var h = inputs[3]
//var left = x
//var right = w-x
//var top = h-y
//var bot = y

var distance = [inputs[0],inputs[2]-inputs[0],inputs[3]-inputs[1],inputs[1]].sorted{$0<$1}
print(distance[0])
