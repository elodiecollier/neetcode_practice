//
//  TwoIntegerSumII.swift
//  neetcode
//
//  Created by Elodie Collier on 4/15/26.
//

import Foundation

// https://neetcode.io/problems/two-integer-sum-ii/question?list=neetcode150
// Level: Medium

//Given an array of integers numbers that is sorted in non-decreasing order.
//
//Return the indices (1-indexed) of two numbers, [index1, index2], such that they add up to a given target number target and index1 < index2. Note that index1 and index2 cannot be equal, therefore you may not use the same element twice.
//
//There will always be exactly one valid solution.
//
//Your solution must use
//O
//(
//1
//)
//O(1) additional space.
//
//Example 1:
//
//Input: numbers = [1,2,3,4], target = 3
//
//Output: [1,2]
//Explanation:
//The sum of 1 and 2 is 3. Since we are assuming a 1-indexed array, index1 = 1, index2 = 2. We return [1, 2].
//
//Constraints:
//
//2 <= numbers.length <= 1000
//-1000 <= numbers[i] <= 1000
//-1000 <= target <= 1000

// Starting Code
//class Solution {
//    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
//
//    }
//}

class TwoIntegerSumSolution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var small = 0
        var big = numbers.count - 1
        
        while small < big {
            if (numbers[small] + numbers[big]) == target {
                return [small + 1, big + 1]
            } else if (numbers[small] + numbers[big]) > target {
                big-=1
            } else {
                small+=1
            }
        }
        return []
    }
}

//[1, 2, 3, 4, 6, 9] target is 9

