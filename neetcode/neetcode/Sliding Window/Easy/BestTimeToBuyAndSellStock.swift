//
//  BestTimeToBuyAndSellStock.swift
//  neetcode
//
//  Created by Elodie Collier on 4/16/26.
//

import Foundation

//https://neetcode.io/problems/buy-and-sell-crypto/question?list=neetcode150
// Level: Easy

//You are given an integer array prices where prices[i] is the price of NeetCoin on the ith day.
//
//You may choose a single day to buy one NeetCoin and choose a different day in the future to sell it.
//
//Return the maximum profit you can achieve. You may choose to not make any transactions, in which case the profit would be 0.
//
//Example 1:
//
//Input: prices = [10,1,5,6,7,1]
//
//Output: 6
//Explanation: Buy prices[1] and sell prices[4], profit = 7 - 1 = 6.
//
//Example 2:
//
//Input: prices = [10,8,7,5,2]
//
//Output: 0
//Explanation: No profitable transactions can be made, thus the max profit is 0.
//
//Constraints:
//
//1 <= prices.length <= 100
//0 <= prices[i] <= 100

// Starting code:
//class Solution {
//    func maxProfit(_ prices: [Int]) -> Int {
//
//    }
//}

class BestTimeToBuyAndSellStockSolution {
    func maxProfit(_ prices: [Int]) -> Int {
        if prices.count < 2 {
            return 0
        }
        
        var left = 0
        var maxProfit = 0
        
        for right in 1..<prices.count {
            if prices[right] <= prices[left] {
                left = right
            } else {
                if maxProfit < prices[right] - prices[left] {
                    maxProfit = prices[right] - prices[left]
                }
            }
        }
        
        return maxProfit
    }
}


