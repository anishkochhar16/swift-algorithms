//
//  Searching.swift
//  StandardAlgorithms
//
//  Created by Anish Kochhar on 11/11/2019.
//  Copyright © 2019 Kochhar, Anish (EJNR). All rights reserved.
//

import Foundation

class Searching {
    
    func linearSearch (array: [Int], target: Int) -> Bool {
        for element in array {
            if element  == target {
                return true
            }
        }
        
        return false
    }
    
    func binarySearch (array: [Int], target: Int) -> Bool {

        var startPoint = 0
        var endPoint = array.count
        
        while startPoint < endPoint {

            let midpoint = startPoint + (endPoint - startPoint) / 2
            if array[midpoint] == target {
                return true
            } else if array[midpoint] > target {
                endPoint = midpoint
            } else {
                startPoint = midpoint + 1
            }
        }
        return false
        
    }
    
    
}
