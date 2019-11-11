//
//  Sorting Test.swift
//  Standard Algorithmstests
//
//  Created by Manners, William (Coll) on 07/11/2019.
//  Copyright © 2019 Manners, William (Coll). All rights reserved.
//

import XCTest

class Sorting_Test: XCTestCase {

    func testBubbleSortWithIntegerArrayReturnsSortedIntegers() {
        //arrange
        let sorting = Sorting()
        let data = [5,4,1,12]
        //act
        let actual = sorting.bubbleSort(data:data)
        
        //assert
        XCTAssertEqual(actual, [1,4,5,12])
    }
    
    func testBubbleSortWithMultipleIntegerArraysReturnsSortedIntegerArrays() {
        //arrange
        let sorting = Sorting()

        let testCases = [(input: [10,3,2,7,1], expected:[1,2,3,7,10]),
                         (input: [456,6346,54,8,1],expected:[1,8,54,456,6346])]
        //act
        //assert
        for testCase in testCases {
            let actual = sorting.bubbleSort(data: testCase.input)
            XCTAssertEqual(actual, testCase.expected)
        }
        
    }
    func testMergeSortWithMultipleIntegerArraysReturnsSortedIntegerArrays() {
        //arrange
        let sorting = Sorting()
        let testCases = [(input: [10,3,2,7,1], expected:[1,2,3,7,10]),
                         (input: [456,6346,54,8,1],expected:[1,8,54,456,6346])]
        //act
        let actual = sorting.mergeSort(input: testCases[0].input)
        let actual2 = sorting.mergeSort(input: testCases[1].input)
        XCTAssertEqual(actual, testCases[0].expected)
        XCTAssertEqual(actual2, testCases[1].expected)
        //assert
    }
    func testMergeAccuratelyMergesTwoIntegerArrays(){
        //arrange
        let sorting = Sorting()
        let testCases = [(inputLeft: [2,8,12,64],inputRight: [1,6,32,54],expected: [1,2,6,8,12,32,54,64])]
        //act
        let actual = sorting.merge(inputLeft: testCases[0].inputLeft, inputRight: testCases[0].inputRight)
        
        //assert
        XCTAssertEqual(actual, testCases[0].expected)
    
    }
}
