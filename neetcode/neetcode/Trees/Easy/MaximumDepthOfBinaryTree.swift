//
//  MaximumDepthOfBinaryTree.swift
//  neetcode
//
//  Created by Elodie Collier on 4/30/26.
//

import Foundation

// https://neetcode.io/problems/depth-of-binary-tree/question?list=neetcode150
// Level: Easy

//Given the root of a binary tree, return its depth.
//
//The depth of a binary tree is defined as the number of nodes along the longest path from the root node down to the farthest leaf node.
//
//Example 1:
//
//
//
//Input: root = [1,2,3,null,null,4]
//
//Output: 3
//Example 2:
//
//Input: root = []
//
//Output: 0
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

class Solution {
    func maxDepth(_ root: TreeNode?) -> Int {
        return dfs(node: root, depth: 0)
    }
    
    func dfs(node: TreeNode?, depth: Int) -> Int {
        if (node == nil) {
            return depth
        }
        
        let leftMax = dfs(node: node?.left, depth: depth + 1)
        let rightMax = dfs(node: node?.right, depth: depth + 1)
        
        return max(leftMax, rightMax)
    }
}
