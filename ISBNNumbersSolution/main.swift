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
print(getOneThreeSum(digit11: 9, digit12: 4, digit13: 8))   // 120
print(getOneThreeSum(digit11: 0, digit12: 5, digit13: 2))   // 108

