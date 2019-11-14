//
//  Unknown.swift
//  Standard Algorithms
//
//  Created by Manners, William (Coll) on 14/11/2019.
//  Copyright © 2019 Manners, William (Coll). All rights reserved.
//

import Foundation

class Unknown (){
    func firstAndLast (input : [Int]) -> Int {
            var final = 0
            if input.count > 0 {
                let first = input[0]
                let last = input[input.count-1]
                final = first + last
            }
            return (final)
            
        }
        func modeFinder (input : [Int]) -> Int {
            var current = input[0]
            var currentc = 1
            var mode = 0
            var modec = 0
            for i in 1..<input.count{
                if input[i] == current{
                    currentc += 1
                        
                }
                else{
                    if currentc > modec{
                        modec = currentc
                        mode = current
                    }
                    current = input[i+1]
                    currentc = 0
                }
            }
            return(mode)
    }
}
