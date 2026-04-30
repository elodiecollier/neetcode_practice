//
//  ReversedLinkedList.swift
//  neetcode
//
//  Created by Elodie Collier on 4/24/26.
//

import Foundation

// https://neetcode.io/problems/reverse-a-linked-list/question?list=neetcode150
// Level: Easy

//Given the beginning of a singly linked list head, reverse the list, and return the new beginning of the list.
//
//Example 1:
//
//Input: head = [0,1,2,3]
//
//Output: [3,2,1,0]
//Example 2:
//
//Input: head = []
//
//Output: []
//Constraints:
//
//0 <= The length of the list <= 1000.
//-1000 <= Node.val <= 1000

//Starting code:
/**
 * Definition for singly-linked list.
 * class ListNode {
 *     var val: Int
 *     var next: ListNode?
 *     init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

//class Solution {
//    func reverseList(_ head: ListNode?) -> ListNode? {
//
//    }
//}

/**
 * Definition for singly-linked list.
 * class ListNode {
 *     var val: Int
 *     var next: ListNode?
 *     init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class ListNode {
    var val: Int
    var next: ListNode?
    init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

// [0] → [1] → [2] → [3] → nil

class ReversedLinkedListSolution {
    func reverseList(_ head: ListNode?) -> ListNode? {

        if head == nil {
            return nil
        }
        
        var current: ListNode? = head!
        var previous: ListNode? = nil
        var next: ListNode? = current!.next
        
        while current != nil {
            next = current!.next
            current!.next = previous
            previous = current
            current = next
        }
        
        return previous
    }
}



