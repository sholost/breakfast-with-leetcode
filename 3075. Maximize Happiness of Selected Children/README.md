# 3075. Maximize Happiness of Selected Children

[Link to problem](https://leetcode.com/problems/maximize-happiness-of-selected-children/)

## Initial Approach:

```Swift

func maximumHappinessSum(_ happiness: [Int], _ k: Int) -> Int {
      //1
      var happy = happiness
      happy.sort (by: >)

      //2
      var result = 0
      var subtract = 0

      //3
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

```

Explanation:

1. Create an array to store the sorted `happiness` _O(n log n)_
2. Create `result` to store current happiness value and `subtract` to store current turning amount (that we have to subtract from value)
3. Iterarting through `happy` while updating `subtract` and `result` value. Once `cur` is `0`, we can immediately return the current `result`, because the `cur` will always be zero if we keep continue. _O(k)_

Overall Time Complexity: _O(n log n)_
