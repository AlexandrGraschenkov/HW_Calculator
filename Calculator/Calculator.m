//
//  Calculator.m
//  Calculator
//
//  Created by Alexander on 27.02.14.
//  Copyright (c) 2014 Alexander. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator

- (int)sumA:(int)a andB:(int)b
{
    return a + b;
}
- (int)divA:(int)a toB:(int)b
{
    return a/b;
}
- (int)sumArray:(NSArray *)arr
{
    NSInteger sum = 0;
    for(NSNumber *i in arr)
        sum += [i intValue];
    return sum;
}
- (int)subtractSumFirstArray:(NSArray *)firstArr withSecondArr:(NSArray *)secondArr
{
    NSInteger sum1 = 0;
    NSInteger sum2 = 0;
    for(NSNumber *i in firstArr)
        sum1 += [i intValue];
    for(NSNumber *j in secondArr)
        sum2 += [j intValue];
    return sum1 - sum2;
}

@end
