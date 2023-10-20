import UIKit

//rewriting the filter function in a declarative style using recursion

//Array of numbers positive and negative
let numbers = [3, 916, -2, 56, -78, 108]

//set relevant parameters for the function
//values are items contained in array numbers
//keep is a function being passed into "func declarativeFilterForInts" and it has one int paramenter - indicated by (int) and returns a bool
//func declarativeFilterForInts retrurns an array of int
func declarativeFilterForInts (values: [Int], keep: (Int) -> Bool) -> [Int] {
    //get the start and "tail" of the array
    let start = values.first
    let tail = Array(values.dropFirst(1))
    
    if let first = start {
        //Assuming there is a value at the start
        if keep(first) {
        //if we want to keep it
        //return it in an array concatenated with the result of calling "func declarativeFilterForInts" again with the tail(end of the list)
            return [first] + declarativeFilterForInts(values: tail, keep: keep)
            
        } else {
        //if we dont want to keep it
        //just call the function with the tail
        return declarativeFilterForInts(values: tail, keep: keep)
        }
    }
    return [Int]()
}

//set the declarative function as 'positiveNumbers' while specifying values for its parameters
//$0 means first argument, that is the first parameter that is passed into this closure,  and compares if it is greater than 0.
let positiveNumbers = declarativeFilterForInts(values: numbers, keep: {$0 > 0})

//pass the declarative function to print function
print(positiveNumbers)

//take note that the declarative function returns an array of int
