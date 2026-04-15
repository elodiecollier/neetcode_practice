//
//  ContainsDuplicate.swift
//  neetcode
//
//  Created by Elodie Collier on 4/14/26.
//

import Foundation

// https://neetcode.io/problems/duplicate-integer/question?list=neetcode150
// Level: Easy

//Given an integer array nums, return true if any value appears more than once in the array, otherwise return false.
//
//Example 1:
//
//Input: nums = [1, 2, 3, 3]
//
//Output: true
//
//Example 2:
//
//Input: nums = [1, 2, 3, 4]
//
//Output: false


// Starting code:
//class Solution {
//    func hasDuplicate(_ nums: [Int]) -> Bool {
//
//    }
//}

class HasDuplicateSolution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        var uniqueNums: Set<Int> = []
        for i in nums {
            uniqueNums.insert(i)
        }
        return (uniqueNums.count != nums.count)
    }
    
    // Sets are like arrays but only contain unique values - no duplicates.
    // The above solution is O(n) time
    
    
    func hasDuplicateAttempt2(_ nums: [Int]) -> Bool {
        var uniqueNums: Set<Int> = []
        for i in nums {
            if uniqueNums.contains(i) {
                return true
            }
            uniqueNums.insert(i)
        }
        return false
    }
    
    // We could also implement the solution in hasDuplicateAttempt2. hasDuplicate has to go through every single index regardless, where hasDuplicateAttempt2 can finish the second a duplicate is found leading it to be slight faster
    // We use Sets in hasDuplicateAttempt2 instead of arrays. Even though using arrays would work too, .contains() is O(n) for arrays and O(1) for sets
}

// both solutions of O(n)




