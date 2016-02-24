

//: Playground - noun: a place where people can play



import Foundation

struct Point {
    
    var x:Double
    
    var y:Double
    
    
    mutating func moveBy(pointB:Point) {
        
        self.x = pointB.x
        self.y = pointB.y
    }
    
    func distanceTo(point:Point)->Double {
        
        
        let a=abs(self.x-point.x)
        
        let b=abs(self.y-point.y)
        
        let c=sqrt(a*a+b*b)
        
        return c
        
    }
}

var pointA=Point(x: 1.0, y: 2.0)

var pointB=Point(x: 3.5, y: 4.5)


pointA.distanceTo(pointB)

pointA.moveBy(pointB)

var pointC=Point(x: 4.2, y: 5.3)

pointA.distanceTo(pointC)

