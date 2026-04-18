//
//  LongestRepeatingCharacterReplacement.swift
//  neetcode
//
//  Created by Elodie Collier on 4/16/26.
//

import Foundation

// https://neetcode.io/problems/longest-repeating-substring-with-replacement/question?list=neetcode150
// Level: Medium

//You are given a string s consisting of only uppercase english characters and an integer k. You can choose up to k characters of the string and replace them with any other uppercase English character.
//
//After performing at most k replacements, return the length of the longest substring which contains only one distinct character.
//
//Example 1:
//
//Input: s = "XYYX", k = 2
//
//Output: 4
//Explanation: Either replace the 'X's with 'Y's, or replace the 'Y's with 'X's.
//
//Example 2:
//
//Input: s = "AAABABB", k = 1
//
//Output: 5
//Constraints:
//
//1 <= s.length <= 1000
//0 <= k <= s.length

// Starting code:
//class Solution {
//    func characterReplacement(_ s: String, _ k: Int) -> Int {
//
//    }
//}

class LongestRepeatingCharacterReplacementSolution {
    func characterReplacement(_ s: String, _ k: Int) -> Int {
        if (k == s.count) { // if k and s are same length, return k
            return k
        }
        
        var sArr = Array(s)
        var left = 0
        var frequencyMap = [Character : Int]() // Track each letter and number of times letter appears in window
        var maxFrequency = 1 // tracks the most frequent letter count
        
        for right in 0..<sArr.count {
            if frequencyMap[sArr[right]] == nil {
                frequencyMap[sArr[right]] = 1 // if letter doesnt exist yet in map, add it
            } else {
                frequencyMap[sArr[right]]! += 1
                // if letter does exist, increase frequency count
                if (frequencyMap[sArr[right]]! > maxFrequency) {
                    maxFrequency += 1 // if letter is now most frequent letter, update maxFrequency count
                }
            }
            if (right - left + 1) - maxFrequency > k {
                // if the length of the window - the max frequency is less than k , then shrink the window.
                frequencyMap[sArr[left]]! -= 1 // decrement frequency count for removed letter
                left += 1 // decrease window size
            }
        }
        
        // if the string is AAAA we dont want to return maxFrequency + k because that would return 6 when the length of the string is 4, so ensure that if you return maxFrequency + k within the bounds of the array length
        if (maxFrequency + k) <= sArr.count {
            return (maxFrequency + k)
        } else {
            return sArr.count
        }
    }
}


