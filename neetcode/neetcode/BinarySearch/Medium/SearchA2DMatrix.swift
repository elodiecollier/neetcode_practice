//
//  SearchA2DMatrix.swift
//  neetcode
//
//  Created by Elodie Collier on 4/20/26.
//

import Foundation

// https://neetcode.io/problems/search-2d-matrix/question?list=neetcode150
// Level: Medium

//You are given an m x n 2-D integer array matrix and an integer target.
//
//Each row in matrix is sorted in non-decreasing order.
//The first integer of every row is greater than the last integer of the previous row.
//Return true if target exists within matrix or false otherwise.
//
//Can you write a solution that runs in O(log(m * n)) time?

//___________________
//|1  | 2  | 4  | 8 |
//|_________________|
//|10 | 11 | 12 | 13|
//|_________________|
//|14 | 20 | 30 | 40|
//|_________________|
//Input: matrix = [[1,2,4,8],[10,11,12,13],[14,20,30,40]], target = 10
//
//Output: true

//___________________
//|1  | 2  | 4  | 8 |
//|_________________|
//|10 | 11 | 12 | 13|
//|_________________|
//|14 | 20 | 30 | 40|
//|_________________|
//Input: matrix = [[1,2,4,8],[10,11,12,13],[14,20,30,40]], target = 15
//
//Output: false

//Constraints:
//
//m == matrix.length
//n == matrix[i].length
//1 <= m, n <= 100
//-10000 <= matrix[i][j], target <= 10000

// Starting code:
//class Solution {
//    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
//
//    }
//}

class SearchA2DMatrixSolution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        let m = matrix.count
        let n = matrix[matrix.count - 1].count
        
        var left = 0
        var right = m * n - 1
        
        while left <= right {
            let mid = left + (right - left) / 2
            let mCoord = mid / n
            let nCoord = mid % n
            if matrix[mCoord][nCoord] == target {
                return true
            } else if matrix[mCoord][nCoord] > target {
                right = mid - 1
            } else {
                left = mid + 1
            }
        }
        return false
    }
}
