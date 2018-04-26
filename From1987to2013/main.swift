//
//  main.swift
//  RotatingLetters
//
//  Created by Gordon, Russell on 2018-04-06.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

//Create a global variable that will store the valid input
var validYear = 0

//Loop forever until vaild input is found
while 1 == 1 {
    //test 1: Wait for input AND at the same time, ensure input is not nil
    guard let givenYear = readLine() else {
        //If we got inside this structure, we have nil input
        //So, we should not do any more test
        //Just prompt again
        continue
    }
    //test 2: is it an integer?
    guard let integerYear = Int(givenYear) else {
        //If we got here, inside the structure, we have input
        //that cannot be made input an integer (e.g. "ninety-five" or "LOL"
        continue// go to the top of the while loop
    }
    
    //test #3: Is the integer in the correct range?
    if integerYear < 0 || integerYear > 10000 {
        //if we got here, the number is NOT in correct range
        continue //go to top of the while loop
    }
    
    //If we got here (all three tests passes) we know we have vailed input
    validYear = integerYear
    
    break //Important: gets us out of the infinite while loop
    
} //END of while loop

//check Next year
checkNextYear: while 1 == 1 {
    //check the next year
    validYear += 1
    
    //test the number2 is distinct digits or not
    var number : [Character : Int] = [:]
    // Create a phrase to inspect
    let numberOfNumber = String(validYear)
    
    // Iterate over each Character in the String
    for character in numberOfNumber {
        
        // Keep track of how often a character occurs in a word
        if number[character] == nil {
            
            // This character didn't yet exist as a key in the dictionary, so create a key with this character and set the value to 1
            number[character] = 1
            
        } else {
            
            continue checkNextYear
            
        }
    }
    print(number)
    break
}
// Print out the output
print("the next distinct digit year is \(validYear) ")

