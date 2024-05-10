class Solution {
    func kthSmallestPrimeFraction(_ arr: [Int], _ k: Int) -> [Int] {
        var frac: [[Int]] = []

        for i in 0..<arr.count {
            if i < arr.count - 1 {
                for j in i + 1..<arr.count {
                    frac.append([arr[i], arr[j]])
                }
            }
        }
        frac.sort { $0[0] * $1[1] < $1[0] * $0[1] }
        return frac[k - 1] ?? []
    }
}