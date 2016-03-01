

//: Playground - noun: a place where people can play



import Foundation

struct Point {
    
    var x:Double
    
    var y:Double
    
    
    mutating func moveBy(pointB:Point) {
        
        self.x = pointB.x
        self.y = pointB.y
    }
    
    func distanceTo(pointB:Point)->Double {
        
        
        
        
        return sqrt(pow((pointA.x - pointB.x),2) + pow((pointA.y-pointB.y),2))
        
    }
}

var pointA=Point(x: 1.0, y: 2.0)

var pointB=Point(x: 3.5, y: 4.5)


pointA.distanceTo(pointB)

pointA.moveBy(pointB)

var pointC=Point(x: 4.2, y: 5.3)

pointA.distanceTo(pointC)


/*------------------Rational numbers--------------------------*/

struct Rational {

    var numinator:Int=0
    var denominator:Int=0
    
    init(numinator:Int, denominator:Int) {
    
        self.numinator=numinator
        self.denominator=denominator
   }
    
    func add(r2: Rational)->Rational {
        
        return Rational(numinator: (r1.numinator * r2.denominator + r1.denominator * r2.numinator), denominator:(r1.denominator * r2.denominator ) )
    }
    
    func sub(r2: Rational)->Rational {
        
        return Rational(numinator: (r1.numinator * r2.denominator - r1.denominator * r2.numinator), denominator:(r1.denominator * r2.denominator ) )
    }
    
    func mul(r2: Rational)->Rational {
        
        return Rational(numinator: (r1.numinator  * r2.numinator), denominator:(r1.denominator * r2.denominator ) )
    }
    
    func div(r2: Rational)->Rational {
        
        return Rational(numinator: (r1.numinator * r2.denominator ), denominator:(r1.denominator * r2.numinator ) )
    }
    
    
    
}

var r1 = Rational(numinator: 1, denominator: 2)
var r2 = Rational(numinator: 3, denominator: 4)

print(r1.add(r2))
print(r1.sub(r2))
print(r1.mul(r2))
print(r1.div(r2))





/*-------------------------- linkedlist---------------*/

class Node {
    
    var item:Int?
    
    var next:Node?
    
}

class myList {
    
    var top:Node = Node()
    
    
    func isEmpty()->Bool {
        
        
        
        if top.item  == nil {
            
            return true
        }
        
        return false
    }
    
    func addItem(value:Int){
        
        
        if self.top.item == nil {
            
            self.top.item = value
            
        }
        else {
            
            var last = self.top
            
            while last.next != nil {
                
                last = last.next!
                
            }
            
            let new = Node()
            
            new.item = value
            last.next = new
            
        }
        
    }
    
    func remove(){
        
        top = top.next!
        
    }
    
    func  getCount()->Int {
        
        var temp = top
        var count = 0
        
        repeat {
            count++
            temp = temp.next!
            
        }
            while temp.item != nil && temp.next != nil
        count++
        
        return count
    }

    
    func display() {
        
        
        var temp = self.top
        
        repeat {
            print(temp.item!)
            temp = temp.next!
        }
            while temp.next != nil
        print(temp.item!)
    }
}

var list = myList()
list.isEmpty()
list.addItem(22)
list.addItem(25)
list.addItem(30)
list.addItem(35)
list.addItem(45)
list.display()
list.getCount()
list.remove()
list.display()








