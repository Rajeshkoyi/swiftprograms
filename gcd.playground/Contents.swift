//: Playground - noun: a place where people can play

import Cocoa

func gcd(x:Int,y:Int)->Int {
    var i = 1;
    var rem=0;
    for i=1;i<=x||i<=y; i++ {
        if x%i==0&&y%i==0 {
            rem=i
        }
    }
    return rem
}
var value1=54,value2=24;
let result = gcd(value1, y: value2)
print("the greatest common divisor is:",result)