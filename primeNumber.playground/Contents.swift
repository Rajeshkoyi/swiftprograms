//: Playground - noun: a place where people can play

import Cocoa

func isPrime(x:Int) ->Bool{
    
    var i=1,count=0;
    for i=1;i<=x;i++ {
        if x%i==0 {
            count++
        }
        
    }
    if count==2 {
        return true
    }else {
        return false
    }
}
let n=8
var result = isPrime(n)
print(result)
