# 786. K-th Smallest Prime Fraction

[Link to problem](https://leetcode.com/problems/k-th-smallest-prime-fraction/)

## Initial Approach:

```Swift
func kthSmallestPrimeFraction(_ arr: [Int], _ k: Int) -> [Int] {
        //1
        var frac: [[Int]] = []

        //2
        for i in 0..<arr.count {
            if i < arr.count - 1 {
                for j in i + 1..<arr.count {
                    frac.append([arr[i], arr[j]])
                }
            }
        }

        //3
        frac.sort { $0[0] * $1[1] < $1[0] * $0[1] }
        return frac[k - 1] ?? []
    }
```

Explanation:

1. Allocate an array to store combination of possible fraction
2. Iterarting through array and store the combination of possible fraction into `frac` _(O(n \* n))_
3. Sort from the smallest fraction into greatest fraction _(O(n log n))_

Overall Time Complexity: O(n \* n)

## Optimization Approaches

### 1. Binary Search

TBA
