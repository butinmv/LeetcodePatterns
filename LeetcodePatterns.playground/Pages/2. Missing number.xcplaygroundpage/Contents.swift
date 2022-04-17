// Given an array nums containing n distinct numbers in the range [0, n],
// return the only number in the range that is missing from the array.

// Example 1:
// Input: nums = [3,0,1]
// Output: 2
// Explanation: n = 3 since there are 3 numbers, so all numbers are in the range [0,3].
// 2 is the missing number in the range since it does not appear in nums.

// Example 2:
// Input: nums = [0,1]
// Output: 2
// Explanation: n = 2 since there are 2 numbers, so all numbers are in the range [0,2].
// 2 is the missing number in the range since it does not appear in nums.

// Example 3:
// Input: nums = [9,6,4,2,3,5,7,0,1]
// Output: 8
// Explanation: n = 9 since there are 9 numbers, so all numbers are in the range [0,9].
// 8 is the missing number in the range since it does not appear in nums.

import Foundation

class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        Array(Set(nums).symmetricDifference(Set(0...nums.count))).first ?? -1
    }
    
    func missingNumberFaster(_ nums: [Int]) -> Int {
        let expectedSum = (nums.count * (nums.count + 1)) / 2
        let givenSum = nums.reduce(0, +)
        return expectedSum - givenSum
    }
}

let examples = [
    [3, 0, 1],
    [0, 1],
    [9, 6, 4, 2, 3, 5, 7, 0, 1]
]
let solution = Solution()
for example in examples {
    print(solution.missingNumber(example))
    print(solution.missingNumberFaster(example))
}
