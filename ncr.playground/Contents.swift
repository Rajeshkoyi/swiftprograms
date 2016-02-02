//: Playground - noun: a place where people can play

import Cocoa

func factorial(x:Int)->Int {
    var fact=1,i=1
    for i=1;i<=x;i++ {
        fact = fact*i
        
    }
    return fact
}

var n=6
var r=2
let nfact = factorial(n)
let rfact = factorial(r)
let mfact = factorial(n-r)


func ncr(x:Int,y:Int,z:Int)->Int {
    
    let sum=x/(y*z)
    return sum
}
let result = ncr(nfact,y:rfact,z:mfact)
print(result)