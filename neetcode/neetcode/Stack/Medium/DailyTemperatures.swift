//
//  DailyTemperatures.swift
//  neetcode
//
//  Created by Elodie Collier on 4/20/26.
//

import Foundation

// https://neetcode.io/problems/daily-temperatures/question?list=neetcode150
// Level: Medium

//You are given an array of integers temperatures where temperatures[i] represents the daily temperatures on the ith day.
//
//Return an array result where result[i] is the number of days after the ith day before a warmer temperature appears on a future day. If there is no day in the future where a warmer temperature will appear for the ith day, set result[i] to 0 instead.
//
//Example 1:
//
//Input: temperatures = [30,38,30,36,35,40,28]
//
//Output: [1,4,1,2,1,0,0]
//Example 2:
//
//Input: temperatures = [22,21,20]
//
//Output: [0,0,0]
//Constraints:
//
//1 <= temperatures.length <= 1000.
//1 <= temperatures[i] <= 100


class DailyTemperaturesSolution {
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
        var result: [Int] = []
        var tempArr: [Int] = []
        
        for i in 0..<temperatures.count {
            result.append(0)
        }
        
        for i in 0..<temperatures.count {
            while !tempArr.isEmpty && temperatures[i] > temperatures[tempArr.last!] {
                  let poppedIndex = tempArr.popLast()!
                  result[poppedIndex] = i - poppedIndex
              }
              tempArr.append(i)
        }
        
        return result
    }
}
