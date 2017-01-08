//: Playground - noun: a place where people can play

import UIKit

/*****************************/
// Insertion Sort - Ascending
/*****************************/

let unsorted = [43, 12, 98, 56, 107, 118, 33, 41, 65, 9]

func insertionSort(_ unsorted:[Int], _ count:Int) -> [Int] {
    var sorted = unsorted
    // Run loop for pass
    for pass in 1..<count {
        var index = pass
        let temp = sorted[index]
        print("Start of pass \(pass)")
        // Run second loop for each element check
        while index > 0 && temp < sorted[index-1] {
            sorted[index] = sorted[index - 1]
            index -= 1
        }
        sorted[index] = temp
        print(sorted)
    }
    return sorted
}

insertionSort(unsorted, unsorted.count)