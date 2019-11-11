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
    func mergeSort(input: [Int]) -> [Int]{
        var final = input
        if input.count > 1{
            var left = [Int](input[0...((input.count/2)-1)] ?? [69])
            var right = [Int](input[(input.count/2)...(input.count-1)])
            left = mergeSort(input: left)
            right = mergeSort(input: right)
            final = merge(inputLeft: left, inputRight: right)
        }
        return(final)
    }
    func quickSortOf(operating: [Int]) -> [Int] {
      let pivot = operating[0]
      var left = [Int]()
      var right = [Int]()
      var sorted = [Int]()
      sorted.append(pivot)
      for i in 1..<operating.count {
        let item = operating[i]
        if item < pivot {
          left.append(item)
        } else {
          right.append(item)
        }
      }
      if left.count > 0{
        let handover: [Int] = quickSortOf(operating: left)
        sorted.insert(contentsOf: handover, at: 0)
      }
      if right.count > 0{
        let handover: [Int] = quickSortOf(operating: right)
        sorted.append(contentsOf:handover)
      }

      return(sorted)
    }
    func insertionSort(sortTime: inout[Int]) {
      sortTime.insert(0, at: 0)
      sortTime.insert(0, at: 0)
      for i in 3..<sortTime.count {
        var comparison = i - 1
        let current = sortTime[i]
        var done = false
        while done != true {
          if current > sortTime[comparison] {
            sortTime.remove(at: i)
            sortTime.insert(current, at: (comparison+1))
            done = true
          }

          if (comparison == 0) {
            done = true
          }
          comparison = comparison - 1
        }
      }
      sortTime.remove(at: 0)
      sortTime.remove(at: 0)
    }

}
