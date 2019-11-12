//
//  SortingTest.swift
//  StandardAlgorithmsTests
//
//  Created by Kochhar, Anish (EJNR) on 07/11/2019.
//  Copyright © 2019 Kochhar, Anish (EJNR). All rights reserved.
//

import XCTest

class SortingTest: XCTestCase {

    let n = 20

    func testBubbleSortWithMultipleIntegerArraysReturnsSortedIntegerArrays () {
        //arrange
        let sorting = Sorting()
        var testCases = [(input: [Int](), expected: [Int]())]
        
        for _ in 0...5 {
            var newTuple = (input: [Int](), expected: [Int]())
            
            for _ in 1...n {
                newTuple.input.append(Int.random(in: 1...50))
            }
            newTuple.expected = newTuple.input.sorted()
            
            testCases.append(newTuple)
        }
        testCases.removeFirst()
        
        //act
        //assert
        for testCase in testCases {
            // testCase in a tuple with the input and expected output
            let actual = sorting.bubbleSort(data: testCase.input)
            XCTAssertEqual(actual, testCase.expected)
        }
    
    }
    
    func testMergeSortWithIntegerArrayReturnsSortedArray () {
        //arrange
        let sorting = Sorting()
        var testCases = [(input: [Int](), expected: [Int]())]
        
        for _ in 0...5 {
            var newTuple = (input: [Int](), expected: [Int]())
            
            for _ in 1...n {
                newTuple.input.append(Int.random(in: 1...50))
            }
            newTuple.expected = newTuple.input.sorted()
            
            testCases.append(newTuple)
        }
        testCases.removeFirst()
        
        //act
        //assert
        for testCase in testCases {
            let actual = sorting.mergeSort(array: testCase.input)
            XCTAssertEqual(actual, testCase.expected)
        }
    }
    
    
    func testQuickSortWithIntegerArrayReturnsSortedArray () {
        //arrange
        let sorting = Sorting()
        
        var testCases = [(input: [Int](), expected: [Int]())]
        
        for _ in 0...5 {
            var newTuple = (input: [Int](), expected: [Int]())
            
            for _ in 1...n {
                newTuple.input.append(Int.random(in: 1...50))
            }
            newTuple.expected = newTuple.input.sorted()
            
            testCases.append(newTuple)
        }
        testCases.removeFirst()
        

        //act
        //assert
        for testCase in testCases {
            let actual = sorting.quickSort(array: testCase.input)
            XCTAssertEqual(actual, testCase.expected)
        }
    }
    
    func testInsertionSortReturnsSortedIntergerArray () {
        //arrange
        let sorting = Sorting()
        var testCases = [(input: [Int](), expected: [Int]())]
        
        for _ in 0...5 {
            var newTuple = (input: [Int](), expected: [Int]())
            
            for _ in 1...n {
                newTuple.input.append(Int.random(in: 1...50))
            }
            newTuple.expected = newTuple.input.sorted()
            
            testCases.append(newTuple)
        }
        testCases.removeFirst()
        
        //act
        //assert
        for testCase in testCases {
            let actual = sorting.insertionSort(array: testCase.input)
            XCTAssertEqual(actual, testCase.expected)
        }
    }

    
    func testSortingPerformance() {
        let n = 20 // Number of elements in test array
        var data  = [Int] ()
        for _ in 0...n {
            data.append(Int.random(in: 1...50))
        }
        let sorting = Sorting()
        
        measure {
            sorting.bubbleSort(data: data)
        }
    
    }
    func testMergeSortPerformance () {
        let n = 20 // Number of elements in test array
        var data  = [Int] ()
        for _ in 0...n {
            data.append(Int.random(in: 1...50))
        }
        let sorting = Sorting()
        measure {
            sorting.mergeSort(array: data)
        }
    }
    func testQuickSortPerformance () {
        let n = 20 // Number of elements in test array
        var data  = [Int] ()
        for _ in 0...n {
            data.append(Int.random(in: 1...50))
        }
        let sorting = Sorting()
        
        measure {
            sorting.quickSort(array: data)
        }
    }
    func testInsertionSortPerformance () {
        let n = 20 // Number of elements in test array
        var data  = [Int] ()
        for _ in 0...n {
            data.append(Int.random(in: 1...50))
        }
        let sorting = Sorting()
        
        measure {
            sorting.insertionSort(array: data)
        }
    }


}
