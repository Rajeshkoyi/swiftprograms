//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"
struct Relational {
    
    var x,y:Int
    
    init(x:Int,y:Int){
        self.x=x
        self.y=y
    }
    
    func add()->Int {
        
        return self.x+self.y
    }
    func subtract()->Int{
        
        return self.x-self.y
    }
    func mul()->Int {
      
        return self.x * self.y
    }
    func devided()->Int {
        
        return self.x / self.y
    }
    func compareTo()->Int {
        if self.x>self.y {
            return 1
        }
        else if self.x<self.y {
            return -1
        }
        else {
            return 0
        }
        
    }
}
var link=Relational(x: 12, y: 23)
link.add()
link.subtract()
link.mul()
link.devided()
link.compareTo()