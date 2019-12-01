//
//  Unknown.swift
//  StandardAlgorithms
//
//  Created by Kochhar, Anish (EJNR) on 14/11/2019.
//  Copyright © 2019 Kochhar, Anish (EJNR). All rights reserved.
//

import Foundation

class Unknown {
    
    func problemOne (array: [Int]) -> Int {
        if array.count == 0 {
            return 0
        } else if array.count == 1 {
            return array[0] * 2
        } else {
            return (array[0] + array[array.count - 1])
        }
    }
    
    func problemTwo (array: [Int]) -> Int {
        var mode = 0
        var biggestChain = 0
        var currentChain = 0
        
        for i in 0 ..< array.count - 1 {
            
            if array[i] == array[i + 1] {
                currentChain += 1
            } else {
                if currentChain > biggestChain {
                    biggestChain = currentChain
                    mode = array[i]
                }
                currentChain = 0
            }
        }
        return mode
    }
    
    func problemThree (array: [Int]) -> Int? {
        if array.count < 2 {
            return nil
        } else {
            var smallest = 100000000000000
            var secondSmallest = 100000000000000
            
            for i in 0..<array.count {
                if array[i] < smallest {
                    if secondSmallest > smallest {
                        secondSmallest = smallest
                    }
                    smallest = array[i]
                } else if array[i] < secondSmallest {
                    secondSmallest = array[i]
                }
            }
            return secondSmallest

        }
    }
    
    func problemFour (array: [Int]) -> Int {
        let sorting = Sorting()
        
        let array = sorting.quickSort(array: array)
        
        return problemTwo(array: array)
    }
    
    func problemFive (url: String) -> String? {
        
        let domainRegEx = "(?<=.com|.au|.co.uk|.net|.org)"
        
        do {
            let regex = try NSRegularExpression(pattern: domainRegEx)
            let nsString = url as NSString
            let results = regex.matches(in: url, range: NSRange(location: 0, length: nsString.length))
            print("Found:",results)
            return "hi"
            
            }
        catch let error as NSError {
            let error = "Invalid RegEx"
            return error
        }
    }
    
    // Could not work out how to use RegEx in XCode
    
}

