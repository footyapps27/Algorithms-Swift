//: Playground - noun: a place where people can play

import UIKit

/*****************************/
// Tower of Hanoi
/*****************************/
// numberOfDiscs = 3
// fromPeg = A
// auxPeg = B
// toPeg = C

func towerOfHanoi(numberOfDisc: Int, fromPeg: Character, auxPeg: Character, toPeg: Character) {
    if(numberOfDisc == 1) {
        print("\(fromPeg) -> \(toPeg)")
        return
    }
    
    towerOfHanoi(numberOfDisc: numberOfDisc-1, fromPeg: fromPeg, auxPeg: toPeg, toPeg: auxPeg)
    
    towerOfHanoi(numberOfDisc: 1, fromPeg: fromPeg, auxPeg: auxPeg, toPeg: toPeg)
    
    towerOfHanoi(numberOfDisc: numberOfDisc-1, fromPeg: auxPeg, auxPeg: fromPeg, toPeg: toPeg)
}

towerOfHanoi(numberOfDisc: 5, fromPeg: "A", auxPeg: "B", toPeg: "C")
