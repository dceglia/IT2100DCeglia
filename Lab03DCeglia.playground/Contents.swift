//: Playground - noun: a place where people can play

import UIKit


// *********************** //
//          TWO            //
// *********************** //

22/7     // = 3.....Integer division results in the nearest whole integer

22.0/7.0     // = 3.142857142857143.....Double division results
Double(22.0/7.0)     // = same ^^ .....in a more precise answer (double precision)

Float(22.0/7.0)     // = 3.142857.....Float division is made up of 8 bits


// *********************** //
//         THREE           //
// *********************** //

class Counter {
    var count = 0

    func increment() {
        count += 1
    }
    
    func decrement() {
        count -= 1
    }
    
    //func decrement() {
    // for i in 1 ... 4 {
            // function()
    // }
    //}
    
    // parameter with argument label and parameter name
    func increment(by amount: Int) {
        count += i
    }
    
    func reset() {
        count = 0
    }
    
    func getCount() {
        return self
    }

}

// ********************** //
//         FIVE           //
// ********************** //

func combineAll(numbers: [Int], starter: String) -> String {
    var numbersCombined = starter + ": "
    for number in numbers {
        numbersCombined = numbersCombined + String(number) + " "
    }
    return numbersCombined
}
print(combineAll(numbers: [9, 8, 7], starter: "Combined"))
