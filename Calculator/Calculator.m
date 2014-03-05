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

- (int)divA:(int)a toB:(int)b;
{
    return a / b;
}

- (int)sumArray:(NSArray*)arr;
{
    int sum = 0;
    
    NSArray *newArray=[[NSArray alloc] initWithArray:arr];
    
    for (int i = 0; i < arr.count; i++)
    {
        sum = sum + [newArray[i] integerValue];
    }
    return sum;
}

- (int)subtractSumFirstArray:(NSArray*)firstArr withSecondArr:(NSArray*)secondArr;
{
    return [self sumArray:(firstArr)] - [self sumArray:(secondArr)];
}
@end
