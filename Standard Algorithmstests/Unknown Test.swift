//
//  Unknown Test.swift
//  Standard Algorithmstests
//
//  Created by Manners, William (Coll) on 14/11/2019.
//  Copyright © 2019 Manners, William (Coll). All rights reserved.
//

import Foundation
import XCTest

class Unknown_Test: XCTestCase {
    func testSumOfFirstAndLastArrayReturnsCorrectValue () {
        //arrange
        let unknown = Unknown()
        let test = [6,2,7,27,8,2,7,2]
        let answer = 8
        let testShort = [32]
        let answerShort = 64
        let testNil = [Int]()
        let answerNil = 0
        //act
        let result = unknown.firstAndLast(input:test)
        let resultShort = unknown.firstAndLast(input:testShort)
        let resultNil = unknown.firstAndLast(input:testNil)
        //assert
        XCTAssertEqual(result, answer)
        XCTAssertEqual(resultShort, answerShort)
        XCTAssertEqual(resultNil, answerNil)
    }
    func testTaskfindsModesInASortedIntegerArray () {
        //arrange
        let unknown = Unknown()
        let test = [12,645,645,75476,75476,75476]
        let answer = 75476
        //act
        let result = unknown.modeFinder(input : test)
        //assert
        XCTAssertEqual(result, answer)
    }
    func testThatTaskFindsSecondSmallestInAnArray () {
        //arrange
        let unknown = Unknown()
        let test = [13,65,75,3,6]
        let answer = 6
        //act
        let result = secondSmallest(input : test)
        //assert
        XCTAssertEqual(result, answer)
    }
}
