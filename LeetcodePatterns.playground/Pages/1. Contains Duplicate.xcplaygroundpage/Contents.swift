/// https://leetcode.com/problems/contains-duplicate/
// Contains Duplicate
// Easy
// Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.

// Example 1:
// Input: nums = [1,2,3,1]
// Output: true

// Example 2:
// Input: nums = [1,2,3,4]
// Output: false

// Example 3:
// Input: nums = [1,1,1,3,3,4,3,2,4,2]
// Output: true

import Foundation

class Solution {
    
    // My Version I
    func containsDuplicate(_ nums: [Int]) -> Bool {
        if nums.isEmpty {
            return false
        }
        
        var dict = [Int: Int]()
        var flag = false
        for i in nums {
            if nums.contains(i) {
                if let value = dict[i] {
                    dict[i] = value + 1
                } else {
                    dict[i] = 1
                }
            } else {
                flag = false
            }
        }
        for element in dict {
            if element.value >= 2 {
                flag = true
                break
            } else {
                flag = false
            }
        }
        return flag
    }
    
    // My Version II
    func containsDuplicateV2(_ nums: [Int]) -> Bool {
        var dict = [Int: Int]()
        for num in nums {
            if let _ = dict[num] {
                return true
            } else {
                dict[num] = 0
            }
        }
        return false
    }
    
    func containsDuplicateFaster(_ nums: [Int]) -> Bool {
        Set(nums).count != nums.count
    }
}

let examples = [
    [],
    [1, 2, 3, 1],
    [1, 2, 3, 4],
    [1, 1, 1, 3, 3, 4, 3, 2, 4, 2],
]
let solution = Solution()
for example in examples {
    print(solution.containsDuplicate(example))
    print(solution.containsDuplicateV2(example))
    print(solution.containsDuplicateFaster(example))
}
