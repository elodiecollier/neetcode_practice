//
//  MinStack.swift
//  neetcode
//
//  Created by Elodie Collier on 4/18/26.
//

import Foundation

// https://neetcode.io/problems/minimum-stack/question?list=neetcode150
// Level: Medium

//Design a stack class that supports the push, pop, top, and getMin operations.
//
//MinStack() initializes the stack object.
//void push(int val) pushes the element val onto the stack.
//void pop() removes the element on the top of the stack.
//int top() gets the top element of the stack.
//int getMin() retrieves the minimum element in the stack.
//Each function should run in
//O
//(
//1
//)
//O(1) time.
//
//Example 1:
//
//Input: ["MinStack", "push", 1, "push", 2, "push", 0, "getMin", "pop", "top", "getMin"]
//
//Output: [null,null,null,null,0,null,2,1]
//
//Explanation:
//MinStack minStack = new MinStack();
//minStack.push(1);
//minStack.push(2);
//minStack.push(0);
//minStack.getMin(); // return 0
//minStack.pop();
//minStack.top();    // return 2
//minStack.getMin(); // return 1
//Constraints:
//
//-2^31 <= val <= 2^31 - 1.
//pop, top and getMin will always be called on non-empty stacks.

// Starting code:
//class MinStack {
//
//    init() {
//
//    }
//
//    func push(_ val: Int) {
//
//    }
//
//    func pop() {
//
//    }
//
//    func top() -> Int {
//
//    }
//
//    func getMin() -> Int {
//
//    }
//}

class MinStack {
    var stack: [Int] = []
    var minStack: [Int] = []

    init() {

    }

    func push(_ val: Int) {
        stack.append(val)
        if minStack.isEmpty {
            minStack.append(val)
        } else {
            if val <= minStack[minStack.count - 1] {
                minStack.append(val)
            }
        }
    }

    func pop() {
        var poppedVal = stack.popLast()
        if poppedVal == minStack[minStack.count - 1] {
            var _ = minStack.popLast()
        }
    }

    func top() -> Int {
        return stack[stack.count - 1]
    }

    func getMin() -> Int {
        return minStack[minStack.count - 1]
    }
}


