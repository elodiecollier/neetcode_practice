//
//  ValidParentheses.swift
//  neetcode
//
//  Created by Elodie Collier on 4/18/26.
//

import Foundation

// https://neetcode.io/problems/validate-parentheses/question?list=neetcode150
// Level: Easy

//You are given a string s consisting of the following characters: '(', ')', '{', '}', '[' and ']'.
//
//The input string s is valid if and only if:
//
//Every open bracket is closed by the same type of close bracket.
//Open brackets are closed in the correct order.
//Every close bracket has a corresponding open bracket of the same type.
//Return true if s is a valid string, and false otherwise.
//
//Example 1:
//
//Input: s = "[]"
//
//Output: true
//Example 2:
//
//Input: s = "([{}])"
//
//Output: true
//Example 3:
//
//Input: s = "[(])"
//
//Output: false
//Explanation: The brackets are not closed in the correct order.

// Starting code:
//class Solution {
//    func isValid(_ s: String) -> Bool {
//
//    }
//}

class ValidParenthesesSolution {
    func isValid(_ s: String) -> Bool {
        if s.count % 2 != 0 {
            return false
        }
        
        var bracketMap = ["(" : ")", "[" : "]", "{" : "}"]
        var sArr = Array(s)
        var sStack: [Character] = []
        
        for i in sArr {
            if bracketMap[String(i)] != nil { // if bracket map has a matching key
                sStack.append(i) // append opening bracket
            } else {
                if sStack.isEmpty {
                    return false // no opening brackets to pop for current closing brace
                } else {
                    var poppedVal = sStack.popLast()
                    if bracketMap[String(poppedVal!)] != String(i) {
                        return false
                    }
                }
            }
        }
        
        return sStack.isEmpty // make sure stack doesnt have any trailing opening braces
    }
}
