//
//  ValidAnagram.swift
//  neetcode
//
//  Created by Elodie Collier on 4/14/26.
//

import Foundation

// https://neetcode.io/problems/is-anagram/question?list=neetcode150
// Level: Easy

//Given two strings s and t, return true if the two strings are anagrams of each other, otherwise return false.
//
//An anagram is a string that contains the exact same characters as another string, but the order of the characters can be different.
//
//Example 1:
//
//Input: s = "racecar", t = "carrace"
//
//Output: true
//Example 2:
//
//Input: s = "jar", t = "jam"
//
//Output: false
//Constraints:
//
//s and t consist of lowercase English letters.

// Starting code:
//class Solution {
//    func isAnagram(_ s: String, _ t: String) -> Bool {
//
//    }
//}

class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.count != t.count {
            return false
        }
        
        var sDictionary: [Character: Int] = [:]
        var tDictionary: [Character: Int] = [:]
        
        for sLetter in s {
            if sDictionary[sLetter] == nil {
                sDictionary[sLetter] = 1
            } else {
                sDictionary[sLetter]! += 1
                // Dictionary subscript in Swift returns an option, so
                // you have to force unwrap it after confirming it exists
            }
        }
        
        for tLetter in t {
            if tDictionary[tLetter] == nil {
                tDictionary[tLetter] = 1
            } else {
                tDictionary[tLetter]! += 1
            }
        }
        
        return sDictionary == tDictionary
    }
}


