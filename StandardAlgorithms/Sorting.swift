//
//  Sorting.swift
//  StandardAlgorithms
//
//  Created by Kochhar, Anish (EJNR) on 07/11/2019.
//  Copyright © 2019 Kochhar, Anish (EJNR). All rights reserved.
//

import Foundation

class Sorting {
    
    func bubbleSort (data: [Int]) -> [Int] {
        var data = data
        
        for i in 0 ..< data.count {
            for j in 0 ..< data.count - 1 - i {
                if data[j] > data[j + 1] {
                    let temp = data[j]
                    data[j] = data[j + 1]
                    data[j + 1] = temp
                }
            }
        }
        return data
    }
    
    func merge (leftArray: [Int], rightArray: [Int]) -> [Int] {
        var orderedArray = [Int]()
        var leftIndex = 0
        var rightIndex = 0
        
        
       while leftIndex < leftArray.count && rightIndex < rightArray.count {
            let leftElement = leftArray[leftIndex]
            let rightElement = rightArray[rightIndex]

            if leftElement < rightElement {
            orderedArray.append(leftElement)
            leftIndex += 1
            }
            else if leftElement > rightElement {
            orderedArray.append(rightElement)
            rightIndex += 1
            }
            else {
            orderedArray.append(leftElement)
            leftIndex += 1
            orderedArray.append(rightElement)
            rightIndex += 1
            }
        }
        while leftIndex < leftArray.count {
            orderedArray.append(leftArray[leftIndex])
            leftIndex += 1
        }

        while rightIndex < rightArray.count {
            orderedArray.append(rightArray[rightIndex])
            rightIndex += 1
        }

        return orderedArray
    }
    
    func mergeSort (array: [Int]) -> [Int] {
        if array.count == 1 {
            return array
        }
        else {
            let midpoint = array.count / 2
            
            let leftArray = mergeSort(array: Array(array[0..<midpoint]))
            let rightArray = mergeSort(array: Array(array[midpoint..<array.count]))
            
            return merge(leftArray: leftArray, rightArray: rightArray)
        }
    }
    
    func quickSort (array: [Int]) -> [Int] {
        
        if array.count <= 1 {
            return array
        } else {
            var left = [Int]()
            var right = [Int]()
            let pivot = array[0]
            
            for i in 1..<array.count {
                if array[i] < pivot {
                    left.append(array[i])
                } else {
                    right.append(array[i])
                }
            }
            
            var orderedArray = [Int]()
            orderedArray.append(contentsOf: quickSort(array: left))
            orderedArray.append(pivot)
            orderedArray.append(contentsOf: quickSort(array: right))
            
            return orderedArray
            
        }
        
    }
    
    func insertionSort (array: [Int]) -> [Int] {
        var array = array
        for i in 0..<array.count {
            let temp = array[i]
            var j = i - 1
            
            while j >= 0 && array[j] > temp {
                array[j + 1] = array[j]
                j = j - 1
            }
            
            array[j + 1] = temp
        }
        return array
    }
}

