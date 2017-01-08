//: Playground - noun: a place where people can play

import UIKit

/*****************************/
// Selection Sort - Ascending
/*****************************/

let unsorted = [43, 12, 98, 56, 107, 118, 33, 41, 65, 9]

func selectionSort(_ unsorted:[Int], _ count:Int) -> [Int] {
    var sorted = unsorted
    // Run loop for pass
    for pass in 0..<count-1 {
        var currentMin = pass
        print("Start of pass \(pass)")
        // Run second loop for each element check
        for i in pass+1..<count {
            // Change the below sign for descending
            if sorted[currentMin] > sorted[i] {
                currentMin = i
            }
        }
        
        let temp = sorted[pass]
        sorted[pass] = sorted[currentMin]
        sorted[currentMin] = temp
        print(sorted)
    }
    return sorted
}

selectionSort(unsorted, unsorted.count)

/*****************************/
// Improvement 1
/*****************************/

/* Add a if condition before the swap to check if indeed we found another element smaller than the current one.
 
    if currentMin != pass {...}
 */
