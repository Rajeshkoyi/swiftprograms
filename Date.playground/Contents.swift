//: Playground - noun: a place where people can play

import Cocoa

func isDateValid(day:Int,month:Int,year:Int) ->Bool {
    
    if day<=31&&month<=12&&year>=1990 {
    
        return true
    }else{
        return false
    }
}

let day = 2
let month = 2
let year = 2016
let check = isDateValid(day, month:month,year:year)
print("the given date is ",check)
