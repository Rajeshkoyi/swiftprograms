

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

/*------------------Rational numbers--------------------------*/

struct Test {
    
    var num:Int
    var den:Int
    
    
    init(num:Int,den:Int)
    {
        self.num=num
        self.den=den
    }
    func gcd( x:Int, y:Int)->Int{
        
        var i = 1;
        var rem=0;
        for i=1;i<=x||i<=y;i++ {
            if x%i==0&&y%i==0 {
                rem=i
            }
        }
        return rem
    }
    func add(m: Test)->String{
        let num = (n.num * m.den) + (n.den * m.num)
        let den = n.den*m.den
        
        assert(den > 0," denominator lessthen zero")
        
        let div = gcd(abs(num), y:abs( den))
        return "\(num/div) / \(den/div) "
        
    }
    func sub(m: Test)->String{
        
        let num = (n.num * m.den) - (n.den * m.num)
        let den = n.den*m.den
        
        assert(den > 0," denominator lessthen zero")
        
        let div = gcd(abs(num), y:abs( den))
        
        return "\(num/div) / \(den/div) "
        
        
    }
    func mul(m: Test)->String{
        let num = (n.num * m.den)*(n.den * m.num)
        
            let den = n.den*m.den

                assert(den > 0," denominator lessthen zero")
        
            let div = gcd(abs(num), y:abs( den))
        
         return "\(num/div) / \(den/div) "
        
    }
    func div(m: Test)->String{
        
        let num = n.num*m.den
        
         let den = n.den*m.num
        
          assert(den > 0," denominator lessthen zero")

          let div = gcd(abs(num), y:abs( den))
        
        return "\(num/div) / \(den/div) "
        
    }
    func compareTo(m: Test)->Int{
        let num = n.num/n.den
        let den = m.num/m.den
        if num > den {
            return 1
        }
        else if num < den {
            return -1
        }
        else{
            
            return 0
            
        }
        
    }
}
let n=Test(num: 1, den: 5)

let m=Test(num: 2, den: 5)

print("\(n.num)/\(n.den) + \(m.num)/\(m.den)  =  \(n.add(m))\n")//1/5 + 2/5  =  3 / 5


print("\(n.num)/\(n.den) - \(m.num)/\(m.den)  =  \(n.sub(m))\n")//1/5 - 2/5  =  -1 / 5


print("\(n.num)/\(n.den) * \(m.num)/\(m.den)  =  \(n.mul(m))\n")//1/5 * 2/5  =  -1 / 5


print("\(n.num)/\(n.den) / \(m.num)/\(m.den)  =  \(n.div(m))\n")//1/5 / 2/5  =  -1 / 5


print("(\(n.num)/\(n.den))compareTo( \(m.num)/\(m.den))  =  \(n.compareTo(m))")//(1/5)compareTo( 2/5)  =  0

