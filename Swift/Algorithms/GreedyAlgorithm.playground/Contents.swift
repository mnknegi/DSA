
/*
 You are given an array arr[] of non-negative numbers. Each number tells you the maximum number of steps you can jump forward from that position.

 For example:

 If arr[i] = 3, you can jump 1 step, 2 steps, or 3 steps forward from position i.
 If arr[i] = 0, you cannot jump forward from that position.
 Your task is to find the minimum number of jumps needed to move from the first position in the array to the last position.

 Note:  Return -1 if you can't reach the end of the array.
 */

func minJumps(_ arr: [Int]) -> Int {
    let n = arr.count
    if n <= 1 { return 0 }
    if arr[0] == 0 { return -1 }

    var maxReach = arr[0]   // Maximum index we can reach
    var steps = arr[0]      // Steps left in the current jump
    var jumps = 1           // Number of jumps

    for index in 1..<n {
        if index == n - 1 {
            return jumps     // Reached last index
        }

        maxReach = max(maxReach, index + arr[index]) // Update max reachable index
        steps -= 1 // Use one step

        if steps == 0 { // Need to jump
            jumps += 1
            if index >= maxReach { return -1 } // Can't move forward
            steps = maxReach - index // Reset steps for the new range
        }
    }
    return -1
}

print(minJumps([1, 3, 5, 8, 9, 2, 6, 7, 6, 8, 9])) // Output: 3
print(minJumps([1, 4, 3, 2, 6, 7])) // Output: 2
print(minJumps([0, 1, 2, 3, 4])) // Output: -1
print(minJumps([2, 3, 1, 1, 4])) // Output: 2
