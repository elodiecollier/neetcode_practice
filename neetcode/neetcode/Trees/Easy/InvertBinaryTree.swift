//
//  InvertBinaryTree.swift
//  neetcode
//
//  Created by Elodie Collier on 4/30/26.
//

import Foundation

// https://neetcode.io/problems/invert-a-binary-tree/question?list=neetcode150
// Level: Easy

//You are given the root of a binary tree root. Invert the binary tree and return its root.
//
//Example 1:
//
//
//
//Input: root = [1,2,3,4,5,6,7]
//
//Output: [1,3,2,7,6,5,4]
//Example 2:
//
//
//
//Input: root = [3,2,1]
//
//Output: [3,1,2]
//Example 3:
//
//Input: root = []
//
//Output: []
//Constraints:
//
//0 <= The number of nodes in the tree <= 100.
//-100 <= Node.val <= 100


/**
 * Definition for a binary tree node.
 * class TreeNode {
 *     var val: Int
 *     var left: TreeNode?
 *     var right: TreeNode?
 *     init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */

class TreeNode {
    var val: Int
    var left: TreeNode?
    var right: TreeNode?
    init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

class InvertBinaryTreeSolution {
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        if root == nil {
            return root
        }
        
        // DFS, pre order traversal
        
        let temp = root?.left
        root?.left = root?.right
        root?.right = temp
        
        _ = invertTree(root?.left)
        _ = invertTree(root?.right)
        
        return root
    }
}



