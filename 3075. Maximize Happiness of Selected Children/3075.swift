class Solution {
    func maximumHappinessSum(_ happiness: [Int], _ k: Int) -> Int {
        var happy = happiness
        happy.sort (by: >)
        var result = 0
        var subtract = 0 

        for i in 0..<k {
            let cur = max(0, happy[i] - subtract)
            if cur == 0 {
                return result
            }
            result += cur
            subtract += 1
        }
        return result
    }
}