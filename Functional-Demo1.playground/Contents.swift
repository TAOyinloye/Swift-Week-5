import UIKit

//create array of mixed numbers
let numbers = [3, 916, -2, 56, -78, 108]

//remove negative numbers from the array
var positiveNumbers = [Int]()
for number in numbers {
    if number > 0 {
        positiveNumbers.append(number)
    }
}
print(positiveNumbers)


//Idempotent e.g., Using remove on a set
var mySet = Set (["one", "two", "Honey"])
var item = mySet.remove("two")
print (mySet)
//adding the following to the code has no additional effect:
//var item2 = mySet.remove("two")
//print (mySet)


//Pure function e.g., max function
//no side effects when called more than once
let heights = [67.5, 65.7, 64.3, 61.1, 60.3, 64.9]
let greatestHeight = heights.max()
print(greatestHeight!)

//First class function
//isPositive is first class
let mixnumbers = [3, 916, -2, 56, -78, 108]
let isPositive = {(number: Int) -> Bool in return number >= 0
}
let positiveMixnumbers = numbers.filter(isPositive)

print(positiveMixnumbers)



//declarative filter function
let newmixnumbers = [3, 916, -2, 56, -78, 108]
let positiveNewnumbers = numbers.filter{(number) -> Bool in return number >= 0
    
}
print(positiveNewnumbers)


//use of $0 >= 0
let finalmixnumbers = [3, 916, -2, 56, -78, 108]
let positiveFinalnumbers = numbers.filter{($0 >= 0)
    
}
print(positiveFinalnumbers)
