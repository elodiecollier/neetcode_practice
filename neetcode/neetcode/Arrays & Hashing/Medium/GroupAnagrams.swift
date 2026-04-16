//
//  GroupAnagrams.swift
//  neetcode
//
//  Created by Elodie Collier on 4/15/26.
//

import Foundation

// https://neetcode.io/problems/anagram-groups/question?list=neetcode150
// Level: Medium

//Given an array of strings strs, group all anagrams together into sublists. You may return the output in any order.
//
//An anagram is a string that contains the exact same characters as another string, but the order of the characters can be different.
//
//Example 1:
//
//Input: strs = ["act","pots","tops","cat","stop","hat"]
//
//Output: [["hat"],["act", "cat"],["stop", "pots", "tops"]]
//Example 2:
//
//Input: strs = ["x"]
//
//Output: [["x"]]
//Example 3:
//
//Input: strs = [""]
//
//Output: [[""]]
//Constraints:
//
//1 <= strs.length <= 1000.
//0 <= strs[i].length <= 100
//strs[i] is made up of lowercase English letters.

// Starting code
//class Solution {
//    func groupAnagrams(_ strs: [String]) -> [[String]] {
//
//    }
//}

class GroupAnagramsSolution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var anagramDictionary = [String : [String]]()
        // [sorted version of word : [words that match]]
        // example: [aet : [eat, ate]]
        
        for i in strs {
            var sortedI = String(i.sorted())
            if anagramDictionary[sortedI] == nil {
                anagramDictionary[sortedI] = [i]
            } else {
                anagramDictionary[sortedI]?.append(i)
            }
        }
        
        return Array(anagramDictionary.values)
    }
}
