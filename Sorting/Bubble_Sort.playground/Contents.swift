//: Playground - noun: a place where people can play

import UIKit

/*****************************/
// Bubble Sort - Ascending
/*****************************/

let unsorted = [43, 12, 98, 56, 107, 118, 33, 41, 65, 9]

func bubbleSort(_ unsorted:[Int], _ count:Int) -> [Int] {
    var sorted = unsorted
    // Run loop for pass
    for pass in 0..<count {
        print("Start of pass \(pass)")
        // Run second loop for each element check
        for i in 0..<count-1 {
            // Change the below sign for descending
            if sorted[i] > sorted[i+1] {
                let temp = sorted[i+1]
                sorted[i+1] = sorted[i]
                sorted[i] = temp
            }
            print(sorted)
        }
    }
    return sorted
}

bubbleSort(unsorted, unsorted.count)

/*****************************/
// Improvement 1
/*****************************/

/* The second loop does not need to run everytime for each pass, since it is sorting the list with each pass. 
 
    Thus, replace "<count-1" with "<count-pass-1"
 */

/*****************************/
// Improvement 2
/*****************************/

/* Add a flag to check if the list is already sorted, thus reducing the number of loop iterations.
  */

/* With flag
func bubbleSort(_ unsorted:[Int], _ count:Int) -> [Int] {
    var sorted = unsorted
    // Run loop for pass
    for pass in 0..<count {
        var blAlreadySorted = true
        print("Start of pass \(pass)")
        // Run second loop for each element check
        for i in 0..<count-1 {
            // Change the below sign for descending
            if sorted[i] > sorted[i+1] {
                let temp = sorted[i+1]
                sorted[i+1] = sorted[i]
                sorted[i] = temp
                blAlreadySorted = false
            }
            print(sorted)
        }
        if blAlreadySorted {
            break
        }
    }
    return sorted
}
 */