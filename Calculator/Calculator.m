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
    return a+b;
}

- (int)divA:(int)a toB:(int)b
{
    
    return a / b;
}

- (int)sumArray:(NSArray*)arr
{
    int sum = 0;
    for (NSNumber *k in arr)
        sum += [k intValue];
    
    return sum;
}

- (int)subtractSumFirstArray:(NSArray*)firstArr withSecondArr:(NSArray*)secondArr
{
    int sum1 = 0, sum2 = 0;
    for (NSNumber *k in firstArr)
        sum1 += [k intValue];
    
    for (NSNumber *k in secondArr)
        sum2 += [k intValue];
    
    return sum1 - sum2;
}



@end