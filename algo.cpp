#include <iostream>
#include <string.h>
#include <vector>
#include <limits.h>

#include "leetcode.h"

int ReverseInteger::reverse(int x) {
        long result = 0;

        while(x != 0) 
        {
            result *= 10;
            result += x % 10;
            x /= 10;
        }

        return result > INT_MAX || result < INT_MIN ? 0:result; 
};
