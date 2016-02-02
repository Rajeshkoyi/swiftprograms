//: Playground - noun: a place where people can play

import Cocoa

func max(a:Int,b:Int,c:Int) ->Int {
    
    var big = a>b?(a>c?a:c):(b>c?b:c)
    
            return big
    
}
let number1:Int = 25
let number2:Int = 13
let number3:Int = 33
let result = max(number1,number2,number3)
print(result)
