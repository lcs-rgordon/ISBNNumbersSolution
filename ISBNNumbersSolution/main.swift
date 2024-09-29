//
//  main.swift
//  ISBNNumbersSolution
//
//  Created by Russell Gordon on 2024-09-29.
//

import Foundation

// FUNCTIONS

func getInput(withPrompt prompt: String, minimum: Int?, maximum: Int?) -> Int {
    
    // Loop until a valid value is provided
    while true {
        
        // Prompt the user
        print(prompt)
        
        // Collect the input
        guard let givenInput = readLine() else {
            continue
        }
        
        // Convert to an integer
        guard let givenInteger = Int(givenInput) else {
            continue
        }
        
        // If a lowest value for the integer was specified...
        if let minimumValue = minimum {
            
            // ... then check that the given integer is greater than or equal to the lowest desired value.
            guard givenInteger >= minimumValue else {
                continue
            }
            
        }
        
        // If an highest possible value for the integer was specified...
        if let maximumValue = maximum {
            
            // ... then check that the given integer is less than or equal to the highest desired value.
            guard givenInteger <= maximumValue else {
                continue
            }
            
            
        }
        
        // If we've made it past all the checks, the input is an integer in the desired range of values, so, return it
        return givenInteger
        
    }
    
}

func getOneThreeSum(digit11: Int, digit12: Int, digit13: Int) -> Int {
    
    return 9*1+7*3+8*1+0*3+9*1+2*3+1*1+4*3+1*1+8*3+digit11*1+digit12*3+digit13*1
    
}

// Quick tests
//print(getOneThreeSum(digit11: 9, digit12: 4, digit13: 8))   // 120
//print(getOneThreeSum(digit11: 0, digit12: 5, digit13: 2))   // 108

func categorize(oneThreeSum: Int) -> Bool {
    if oneThreeSum % 10 == 0 {
        return true
    } else {
        return false
    }
}

// Quick tests
//print(categorize(oneThreeSum: 120)) // true
//print(categorize(oneThreeSum: 108)) // false

func report(digit11: Int, digit12: Int, digit13: Int) -> String {
    
    let sum = getOneThreeSum(
        digit11: digit11,
        digit12: digit12,
        digit13: digit13
    )

    let result = categorize(oneThreeSum: sum)
    
    if result == true {
        return """
                The 1-3 sum is \(sum)
                The ISBN number 9780921418\(digit11)\(digit12)\(digit13) is a valid ISBN number.
                """
    } else {
        return """
                The 1-3 sum is \(sum)
                The ISBN number 9780921418\(digit11)\(digit12)\(digit13) is NOT a valid ISBN number.
                """
    }
    
}

// Quick tests
//print(report(digit11: 9, digit12: 4, digit13: 8)) // yes
//print(report(digit11: 0, digit12: 5, digit13: 2)) // no

// INTERACTIVE VERSION

// 1. Input
let eleventhDigit = getInput(withPrompt: "Digit 11?", minimum: 0, maximum: 9)
let twelthDigit = getInput(withPrompt: "Digit 12?", minimum: 0, maximum: 9)
let thirteenthDigit = getInput(withPrompt: "Digit 13?", minimum: 0, maximum: 9)

// 2. Process
let result = report(
    digit11: eleventhDigit,
    digit12: twelthDigit,
    digit13: thirteenthDigit
)

// 3. Output
print(result)
