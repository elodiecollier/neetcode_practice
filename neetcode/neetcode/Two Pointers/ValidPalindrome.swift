//
//  ValidPalindrome.swift
//  neetcode
//
//  Created by Elodie Collier on 4/15/26.
//

import Foundation

// https://neetcode.io/practice/practice/neetcode150
// Level: Easy

//Given a string s, return true if it is a palindrome, otherwise return false.
//
//A palindrome is a string that reads the same forward and backward. It is also case-insensitive and ignores all non-alphanumeric characters.
//
//Note: Alphanumeric characters consist of letters (A-Z, a-z) and numbers (0-9).
//
//Example 1:
//
//Input: s = "Was it a car or a cat I saw?"
//
//Output: true
//Explanation: After considering only alphanumerical characters we have "wasitacaroracatisaw", which is a palindrome.
//
//Example 2:
//
//Input: s = "tab a cat"
//
//Output: false
//Explanation: "tabacat" is not a palindrome.
//
//Constraints:
//
//1 <= s.length <= 1000
//s is made up of only printable ASCII characters.

// Starting code:
//class Solution {
//    func isPalindrome(_ s: String) -> Bool {
//
//    }
//}

class Solution {
    func isPalindrome(_ s: String) -> Bool {
        
        var sLowercase = Array(s.lowercased())
        var left = 0
        var right = sLowercase.count - 1
        
        while left < right {
            if !isLetterOrNumber(char: sLowercase[left]) {
                left+=1
            } else if !isLetterOrNumber(char: sLowercase[right]) {
                right-=1
            } else {
                if sLowercase[left] != sLowercase[right] {
                    return false
                }
                left+=1
                right-=1
            }
        }
        
        return true
    }
    
    
    func isLetterOrNumber(char: Character) -> Bool {
        return char.isLetter || char.isNumber
    }
}
