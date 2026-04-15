//
//  TwoSum.swift
//  neetcode
//
//  Created by Elodie Collier on 4/14/26.
//

import Foundation

// https://neetcode.io/problems/two-integer-sum/question
// Level: Easy

//Given an array of integers nums and an integer target, return the indices i and j such that nums[i] + nums[j] == target and i != j.
//
//You may assume that every input has exactly one pair of indices i and j that satisfy the condition.
//
//Return the answer with the smaller index first.
//
//Example 1:
//
//Input:
//nums = [3,4,5,6], target = 7
//
//Output: [0,1]
//Explanation: nums[0] + nums[1] == 7, so we return [0, 1].
//
//Example 2:
//
//Input: nums = [4,5,6], target = 10
//
//Output: [0,2]
//Example 3:
//
//Input: nums = [5,5], target = 10
//
//Output: [0,1]
//Constraints:
//
//2 <= nums.length <= 1000
//-10,000,000 <= nums[i] <= 10,000,000
//-10,000,000 <= target <= 10,000,000
//Only one valid answer exists.

// Starting code:
//class Solution {
//    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
//
//    }
//}

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        if (nums.count) == 2 {
            return [0,1]
        }
        
        var numsDictionary = [Int : Int]()
        
        for i in 0..<nums.count {
            if numsDictionary[nums[i]] != nil {
                return [numsDictionary[nums[i]]!, i]
            }
            numsDictionary[target - nums[i]] = i
        }
        return []
    }
}

// Thought process:
// Create a dictionary
// Check if the dictionary contains the value at nums[i]
// If it doesn't, add an entry in the dictionary where the key is (target - nums[i]),
// and the value is the index.
// If there is a match, that means the value at nums[i] + the key of numsDictionary[nums[i]] equals target. Return the stored index (the value in the dictionary) and the current index i.


