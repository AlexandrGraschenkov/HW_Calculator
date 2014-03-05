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
    return  a/b;
}
- (int)sumArray:(NSArray*)arr
{
    int sum = 0;
    for (int i=0; i < [arr count]; i++) {
        sum = sum + [[arr objectAtIndex:i] intValue];
    }
    return sum;
}
- (int)subtractSumFirstArray:(NSArray*)firstArr withSecondArr:(NSArray*)secondArr
{
    int sum1 = 0;
    int sum2 = 0;
    for (int i=0; i < [firstArr count]; i++) {
        sum1 = sum1 + [[firstArr objectAtIndex:i] intValue];
    }
    for (int j=0; j < [secondArr count]; j++) {
        sum2 = sum2 + [[secondArr objectAtIndex:j] intValue];
    }
    return sum1-sum2;
}

@end
