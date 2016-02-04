//: Playground - noun: a place where people can play

class TestClass{
   
    
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
    
   
    
    func ncr(a:Int,b:Int)->Int {
        
        func factorial(x:Int)->Int {
            var fact=1,i=1
            for i=1;i<=x;i++ {
                fact = fact*i
                
            }
            return fact
        }
        
        
        let result = factorial(a)/(factorial(b)*factorial(a-b))
        
        return result
    }
    
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
        
    }//end of prime function

    func max(a:Int,b:Int,c:Int) ->Int {
        
        if a>b&&a>c {
            return a
        } else if b>a&&b>c {
            return b
        } else {
            return c
        }
        
    }//end of max function

    func isDateValid(date:Int,month:Int,year:Int)->Bool {
        
        if 1>month||month>12
        {
            return false
        }
        var days = 30
        
        if(month==2)
        {
            days=28
            
            if year%4==0 && year%100 != 0||year%400==0
            {
                days=29
            }
        }
        else {
            if(1<=month)
            {
                days=31
            }
            
        }
        if date<1||date>days
        {
            return false
        }
        
        return true
        
    }// end of isdatefunction

}//end of the testclass

let test = TestClass()

test.isPrime(7)

test.isDateValid(4, month: 2, year: 2016)

test.gcd(54, y: 24)

test.max(23, b: 12, c: 8)

test.ncr(5, b: 2)