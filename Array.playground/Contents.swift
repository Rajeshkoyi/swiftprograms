

//reverse  a given array

func reverse(var arr:[Int])->[Int] {
    
    let len=arr.count
    var n=len-1
    for var i=0;i<n;i++ {
        
        if i<=n {
            
            let temp=arr[i]
            arr[i]=arr[n]
            arr[n] = temp
            n--
        }
    }
    return arr
}
var arr:[Int]=[1,2,3,4,5,6,7,8,9]

print("reversing Array is:\(reverse(arr))")

//reversing Array is:[9, 8, 7, 6, 5, 4, 3, 2, 1]





//=========== find max in array ===============

func isMax(arr:[Int])->Int {
    var big=0
    for index in arr {
        if big < index {
            big=index
        }
    }
    return big
}
var max = isMax([1,2,3,4,5])

print(" \n max value of array: \(max) ")

// max value of array: 5





//============ square elements in Array ========================

func Square(var array:[Int])->[Int] {
    
    for var i=0;i<array.count;i++ {
            array[i] = array[i]*array[i]
    }
    return array
}
let square=Square([1,2,3,4,5])
print("\n square of array elemets: \(square)")

//square of array elemets: [1, 4, 9, 16, 25]






//=========== remove occurences in Array ============================

func RemoveAllOccurences(arr:[Int],n:Int)->[Int]{
    
    var temp=[Int]()
    
    for index in arr {
        if index != n {
            temp += [index]
        }
    }
    return temp
}
let newArr=RemoveAllOccurences([1,1,2,3,3,4,5,5,6,7],n:1)

print("\n remove all occurences in array: \(newArr)")

//remove all occurences in array: [2, 3, 3, 4, 5, 5, 6, 7]







//=========== remove duplicates in Array ================

func   RemoveDupSortedArray(let sortedArr:[Int])->[Int]{
    
    var empty=[Int]()
    
    for var i=0;i<sortedArr.count-1;i++ {
        
        if sortedArr[i] != sortedArr[i+1] {
            
            empty += [sortedArr[i]]
            
        }
        
    }
    empty += [sortedArr[sortedArr.count-1]]
    
    return empty
}

let changedArray=RemoveDupSortedArray([1,1,2,3,3,4,5,5,6,6,7])

print("\n remove duplicates in array: \(changedArray)")

//remove duplicates in array: [1, 2, 3, 4, 5, 6, 7]




//========= concat two arrays ==================

func concatArray(var arr1:[Int],arr2:[Int])->[Int] {
   
    for item in arr2 {
        
        arr1 += [item]
        
    }
    return arr1
}
let sum=concatArray([1,2,3,4],arr2:[5,6,7,8,9])

print("\n concatinating two arrays : \(sum)")

//concatinating two arrays : [1, 2, 3, 4, 5, 6, 7, 8, 9]



 
