//
//  TopKFrequentElements.swift
//  neetcode
//
//  Created by Elodie Collier on 4/15/26.
//

import Foundation

// https://neetcode.io/problems/top-k-elements-in-list/question?list=neetcode150
// Level: Medium

//Given an integer array nums and an integer k, return the k most frequent elements within the array.
//
//The test cases are generated such that the answer is always unique.
//
//You may return the output in any order.
//
//Example 1:
//
//Input: nums = [1,2,2,3,3,3], k = 2
//
//Output: [2,3]
//Example 2:
//
//Input: nums = [7,7], k = 1
//
//Output: [7]
//Constraints:
//
//1 <= nums.length <= 10^4.
//-1000 <= nums[i] <= 1000
//1 <= k <= number of distinct elements in nums.

// Starting Code:
//class Solution {
//    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
//
//    }
//}

class TopKSolution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var numsDictionary = [Int : Int]()
        
        for i in nums {
            if numsDictionary[i] == nil {
                numsDictionary[i] = 1
            } else {
                numsDictionary[i]! += 1
            }
        }
        
        let orderedNums = numsDictionary.sorted { $0.value > $1.value }
        // orderedNums is an array of tuples
        // .sorted() ALWAYS returns an array so orderedNums is [(key: Int, value: Int)]
        // Dictionaries are unordered by design, so to specify the order, you have to turn it into something else
        // .sorted { $0.value > $1.value } is DESCENDING order, and sort by value
        
        let topK = orderedNums.prefix(k)
        var result = [Int]()
        for element in topK {
            result.append(element.key)
        }

        return result
        // You could also use .map instead of looping again:
        // return orderedNums.prefix(k).map { $0.key } 
        // prefix(k): returns the first k elements of the array
    }
}




