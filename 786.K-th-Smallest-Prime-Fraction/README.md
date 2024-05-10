# 786. K-th Smallest Prime Fraction

### My Approach:

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

1. Alocate an array to store combination of possible fraction
2. Iterarting through array and store the combination of possible fraction into `frac` (O(n \* n))
3. Sort from the smallest fraction into greatest fraction (O(n log n))

Overall Time Complexity: O(n _ n _ log n)

### Optimization Approaches

# 1. Binary Search

TBA
