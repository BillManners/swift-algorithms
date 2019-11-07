//
//  File.swift
//  Standard Algorithms
//
//  Created by Manners, William (Coll) on 07/11/2019.
//  Copyright © 2019 Manners, William (Coll). All rights reserved.
//

import Foundation

class Sorting {
    
    func bubbleSort(data : [Int]) -> [Int] {
        var working = data
        var swap = true
        while swap{
          swap = false
          for i in 0..<(working.count-1){
            if working[i] > working [i+1]{
              swap = true
              let newIPlusOne = working[i]
              working[i] = working[i+1]
              working[i+1] = newIPlusOne
            }
          }
        }
        return (working)
    }
    func merge(inputLeft : [Int],inputRight : [Int]) -> [Int]{
        var merged = [Int]()
        var inputOne = inputLeft
        var inputTwo = inputRight
        var sorted = false
        while sorted == false{
            if inputOne[0]<inputTwo[0]{
                merged.append(inputOne[0])
                inputOne.remove(at: 0)
            }
            else {
                    merged.append(inputTwo[0])
                    inputTwo.remove(at: 0)
            }
            if inputOne.count == 0{
                merged.append(contentsOf:inputTwo)
                sorted = true
            }
            if inputTwo.count == 0{
                merged.append(contentsOf:inputOne)
                sorted = true
            }
        }
        return(merged)
    }
}
