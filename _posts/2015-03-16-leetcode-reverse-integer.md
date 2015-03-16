---
layout: post
title: Leetcode 7 - Reverse Integer
---

> Reverse digits of an integer.

> Example1: x = 123, return 321

> Example2: x = -123, return -321


```C++

	int reverse(int x) {
        // 记录符号
        int sign = (x>0) ? 1 : -1;
        // 只考虑整数，注意这里不能简单的abs
        // 应该先转为long类型后再abs
        // 因为int的最小值-2147483648 abs后溢出，wtf
        long xx = abs((long)x);
        long res=0;
        while(xx) {
            res = res*10 + xx%10;
            xx /= 10;
        }
        
        // 转换后溢出，int: -2147483648～2147483647 
        if(res>INT_MAX){
            return 0;
        }
        
        return (sign>0) ? res : (-1)*res;
    }
    
```

---
*详见[这里](https://leetcode.com/submissions/detail/23188556/)*