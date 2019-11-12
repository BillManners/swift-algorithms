//
//  Searches.swift
//  Standard Algorithms
//
//  Created by Manners, William (Coll) on 12/11/2019.
//  Copyright © 2019 Manners, William (Coll). All rights reserved.
//

import Foundation

class Searches {
    func linearSearch(mainList : [Int], searchTerm : Int) -> Int{
        for i in 0...(mainList.count-1){
          if mainList[i] == searchTerm{
            return (i)
          }
        }
        return (69)
    }
}
