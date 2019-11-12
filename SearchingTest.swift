//
//  SearchingTest.swift
//  StandardAlgorithmsTests
//
//  Created by Anish Kochhar on 11/11/2019.
//  Copyright © 2019 Kochhar, Anish (EJNR). All rights reserved.
//

import XCTest

class SearchingTest: XCTestCase {

    let n = 20
    
    func testLinearSearchWithIntergerArrayReturnsWhetherAnElementIsPresent () {
        //arrange
        let searching = Searching()
        var testCases = [(input: [Int](), searchFor: Int())]
        
        for _ in 0...5 {
            var newTuple = (input: [Int](), searchFor: Int())
            
            for _ in 1...n {
                newTuple.input.append(Int.random(in: 1...100))
            }
            newTuple.searchFor = Int.random(in: 1...n)  //picks a random int, so it may or may not be in the input array
            
            testCases.append(newTuple)
        }
        testCases.removeFirst()
        
        //act
        //assert
        for testCase in testCases {
            let found = searching.linearSearch(array: testCase.input, target: testCase.searchFor)
            //print("\(testCase.input) is the the array and the target is: \(testCase.searchFor). It was \(found)")
            XCTAssertEqual(found, testCase.input.contains(testCase.searchFor))
            
        }
        
    }
    
    
    func testBinarySearchWithIntergerArrayReturnsWhetherAnElementIsPresent() {
        //arrange
        let searching = Searching()
        var testCases = [(input: [Int](), searchFor: Int())]
        
        for _ in 0...5 {
            var newTuple = (input: [Int](), searchFor: Int())
            
            for _ in 1...n {
                newTuple.input.append(Int.random(in: 1...100))
            }
            newTuple.searchFor = Int.random(in: 1...n)  //picks a random int, so it may or may not be in the input array
            
            testCases.append(newTuple)
        }
        testCases.removeFirst()
        
        //act
        //assert
        for testCase in testCases {
            let found = searching.binarySearch(array: testCase.input.sorted(), target: testCase.searchFor)
            XCTAssertEqual(found, testCase.input.contains(testCase.searchFor))
        }
        
    }
    
    func testBinarySearchPerformance () {
        let n = 20 // Number of elements in test array
        var data  = [Int] ()
        for _ in 0...n {
            data.append(Int.random(in: 1...50))
        }
        let searching = Searching()
        
        measure {
            searching.binarySearch(array: data, target: Int.random(in: 1...50))
        }
    }
    func testLinearSearchPerformance () {
        let n = 20 // Number of elements in test array
        var data  = [Int] ()
        for _ in 0...n {
            data.append(Int.random(in: 1...50))
        }
        let searching = Searching()
        
        measure {
            searching.linearSearch(array: data, target: Int.random(in: 1...50))
        }
    }
}


