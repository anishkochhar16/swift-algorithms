//
//  UnknownTest.swift
//  StandardAlgorithmsTests
//
//  Created by Kochhar, Anish (EJNR) on 14/11/2019.
//  Copyright © 2019 Kochhar, Anish (EJNR). All rights reserved.
//

import XCTest

class UnknownTest: XCTestCase {

    func testProblemOneFunctionReturnsCorrectInteger () {
        let unknown = Unknown()

        let testCases = [([5, 2, 6, 12, 6], 11), ([3], 6), ([Int](), 0), ([45, 23, 12, 5, 65, 8], 53)]
        
        for testCase in testCases {
            let returnInteger = unknown.problemOne(array: testCase.0)
            XCTAssertEqual(returnInteger, testCase.1)
        }
    }
    
    func testProblemTwoFunctionReturnsMode () {
        let unknown = Unknown()
        
        let testCases = [([1, 1, 1, 3, 4, 5, 7, 7, 7, 7, 7, 8, 9, 12], 7), ([5, 23, 79, 124, 124, 357], 124), ([24, 26, 26, 26, 27, 28, 29, 29, 29, 30, 30], 26)]
        
        for testCase in testCases {
            let actualMode = unknown.problemTwo(array: testCase.0)
            XCTAssertEqual(actualMode, testCase.1)
        }
    }
    
    func testProblemThreeReturnsSmallestInteger () {
        let unknown = Unknown()
        
        let testCases = [([5], nil), ([4, 5, 1, 543, 12, 54, 32, 6553], 4), ([6, 23, 64, 3, 64, 35, 8, 12, 9], 6), ([9, 15, 23, 6, 12, 65, 235, 63, 4, 23], 6)]
        
        for testCase in testCases {
            let actualSecondSmallest = unknown.problemThree(array: testCase.0)
            XCTAssertEqual(actualSecondSmallest, testCase.1)
        }
    }
    
    func testProblemFourReturnsModeFromUnsortedArray () {
        let unknown = Unknown()
        
        let testCases = [([1, 1, 1, 3, 4, 5, 7, 7, 7, 7, 7, 8, 9, 12], 7), ([5, 23, 79, 124, 124, 357], 124), ([24, 26, 26, 26, 27, 28, 29, 29, 29, 30, 30], 26), ([5, 5, 34, 23, 12, 68, 1, 75, 12, 865, 1, 9, 1, 32], 1), ([7, 2, 64, 7, 9, 12, 876,543, 234, 5, 123, 75, 7, 12, 64, 523, 134, 6543, 7], 7)]
        
        for testCase in testCases {
            let actualMode = unknown.problemFour(array: testCase.0)
            XCTAssertEqual(actualMode, testCase.1)
        }
    }
    
    func testProblemFiveReturnsDomainNameFromURL () {
        let unknown = Unknown()
        
        let testCases = [("http://www.example.com", "example"), ("https://www.example.com/actor/angle?base=brass&afternoon=boat", "example"), ("https://www.whatsmyip.org/random-website-machine", "whatsmyip")]
        
        for testCase in testCases {
            let actualDomain = unknown.problemFive(url :testCase.0)
            XCTAssertEqual(actualDomain, testCase.1)
        }
    }

}
