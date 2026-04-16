//
//  LongestSubstringWithoutRepeatingCharacters.swift
//  neetcode
//
//  Created by Elodie Collier on 4/16/26.
//

import Foundation

// https://neetcode.io/problems/longest-substring-without-duplicates/question?list=neetcode150
// Level: Medium

//Given a string s, find the length of the longest substring without duplicate characters.
//
//A substring is a contiguous sequence of characters within a string.
//
//Example 1:
//
//Input: s = "zxyzxyz"
//
//Output: 3
//Explanation: The string "xyz" is the longest without duplicate characters.
//
//Example 2:
//
//Input: s = "xxxx"
//
//Output: 1
//Constraints:
//
//0 <= s.length <= 1000
//s may consist of printable ASCII characters.

// Starting code:
//class Solution {
//    func lengthOfLongestSubstring(_ s: String) -> Int {
//
//    }
//}

class LongestSubstringWithoutRepeatingCharactersSolution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var uniqueString = Set<Character>()
        var left = 0
        var maxLength = 0
        var sArr = Array(s)
        
        for right in 0..<sArr.count {
            while uniqueString.contains(sArr[right]) {
                uniqueString.remove(sArr[left])
                left += 1
            }
            uniqueString.insert(sArr[right])
            if (maxLength < uniqueString.count) {
                maxLength = uniqueString.count
            }
        }
        
        
        return maxLength
    }
}


