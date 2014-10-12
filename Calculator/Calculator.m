//
//  Calculator.m
//  Calculator
//
//  Created by Alexander on 27.02.14.
//  Copyright (c) 2014 Alexander. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator

- (int)sumA:(int)a andB:(int)b{
    return a+b;
}
- (int)divA:(int)a toB:(int)b{
    if (b!=0) {
        return a/b;
    }
    else
    {
        return nil;
        NSLog(@"Error: B is equal 0");
    }
}
- (int)sumArray:(NSArray*)arr{
    int sum = 0;
    for (NSNumber *num in arr)
        sum += [num intValue];
    
    return sum;
    
}
- (int)subtractSumFirstArray:(NSArray*)firstArr withSecondArr:(NSArray*)secondArr{
    int firstSum = 0, secondSum = 0;
    for (NSNumber *num in firstArr)
        firstSum += [num intValue];
    
    for (NSNumber *num in secondArr)
        secondSum += [num intValue];
    
    return firstSum - secondSum;
}


@end
