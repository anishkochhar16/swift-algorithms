//
//  SortingTest.swift
//  StandardAlgorithmsTests
//
//  Created by Kochhar, Anish (EJNR) on 07/11/2019.
//  Copyright © 2019 Kochhar, Anish (EJNR). All rights reserved.
//

import XCTest

class SortingTest: XCTestCase {

    func testBubbleSortWithMultipleIntegerArraysReturnsSortedIntegerArrays () {
        //arrange
        let sorting = Sorting()
        let testCases = [(input: [10, 3, 2, 7, 1], expected: [1, 2, 3, 7, 10]),
                         (input: [400, 231, 64, 123, 57, 579, 342, 234, 12], expected: [12, 57, 64, 123, 231, 234, 342, 400, 579]),
                         (input: [1], expected: [1])]
        
        //act
        //assert
        for testCase in testCases {
            // testCase in a tuple with the input and expected output
            let actual = sorting.bubbleSort(data: testCase.input)
            XCTAssertEqual(actual, testCase.expected)
        }
    
    }
    
   /* func testMergeReturnsMergedArraysFromTwoIntergerArrays () {
        //arrange
        let sorting = Sorting()
        let testCases = [(inputOne: [1, 7, 8], inputTwo: [2, 6, 12], expected: [1, 2, 6, 7, 8, 12]),
                         (inputOne: [2, 4, 14, 16, 46], inputTwo: [5, 67, 80, 903, 1000], expected: [2, 4, 5, 14, 16, 46, 67, 80, 903, 1000])]
        
        //act
        //assert
        for testCase in testCases {
            let actual = sorting.merge(leftArray: testCase.inputOne , rightArray: testCase.inputTwo)
            XCTAssertEqual(actual, testCase.expected)
        }
    } */
    
    func testMergeSortWithArrayReturnsSortedArray () {
        //arrange
        let sorting = Sorting()
        let testCases = [(input: [8,24,14,6,2,7,89,23,12,4], expected: [2, 4, 6, 7, 8, 12, 14, 23, 24, 89])]
        
        //act
        //assert
        for testCase in testCases {
            let actual = sorting.mergeSort(array: testCase.input)
            XCTAssertEqual(actual, testCase.expected)
        }
    }
    
    func testBubbleSortPerformance() {
        let data = [456, 23, 12, 54, 13, 5, 132]
        let sorting = Sorting()
        
        measure {
            sorting.bubbleSort(data: data)
        }
    }
}
