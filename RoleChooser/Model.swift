//
//  Model.swift
//  RoleChooser
//
//  Created by Arman Tarkhanian on 11/28/18.
//  Copyright © 2018 Arman Tarkhanian. All rights reserved.
//

import UIKit

class Model: NSObject {
    var countsAndTimes = [[0, Date(), "Top"] as [Any],
        [0, Date()+1, "Jungle"] as [Any],
        [0, Date()+2, "Middle"] as [Any],
        [0, Date()+3, "Bottom"] as [Any],
        [0, Date()+4, "Support"] as [Any]]
    
    func calcMin() -> (String, Int){
        var counts: [Int] = []
        for x in countsAndTimes {
            //print(x)
            counts.append(x[0] as! Int)
        }
        let min = counts.min()
        var indices: [Int] = []
        for (index, val) in counts.enumerated() {
            if val == min {
                indices.append(index)
            }
        }
        if indices.count > 1 {
            var times: [Date] = []
            for x in indices {
                times.append(countsAndTimes[x][1] as! Date)
            }
            let earliest = times.min()
            var indices2: [Int] = []
            for (index, val) in times.enumerated() {
                if val == earliest {
                    indices2.append(indices[index])
                }
            }
            return (countsAndTimes[indices2[0]][2] as! String, indices2[0])
        } else {
            return (countsAndTimes[indices[0]][2] as! String, indices[0])
        }
    }
    
    func calcSecondMin() -> (String, Int) {
        let min: (String, Int) = calcMin()
        let temp = countsAndTimes
        for x in countsAndTimes {
            if min.0 == x[2] as! String {
                countsAndTimes.remove(at: min.1)
            }
        }
        let result = calcMin()
        countsAndTimes = temp
        return result
    }
}


