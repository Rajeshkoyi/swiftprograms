//: Playground - noun: a place where people can play

import Cocoa

import Foundation

func isPrime(x:Int) ->Bool{
    
    var i=1,count=0;
    for i=2;i<=x/2;i++ {
        if x%i == 0 {
            count++
            break
        }
        
    }
    if count==0 {
        return true
    }else {
        return false
    }
    
}

let n=29
let result = isPrime(n)

print(result)

