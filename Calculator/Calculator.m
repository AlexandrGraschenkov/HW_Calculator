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
    return a/b;
}
- (int)sumArray:(NSArray*)arr
{
    int sum = 0;
    for(int i = 0 ; i < [arr count] ; i++)
    {
        int k = [[arr objectAtIndex:i] intValue];
        sum += k;
    }
    return sum;
}

- (int)subtractSumFirstArray:(NSArray*)firstArr withSecondArr:(NSArray*)secondArr
{
    int sum1 = [self sumArray:firstArr];
    int sum2 = [self sumArray:secondArr];
    
    /*
    int sum1 = 0;
    for(int i = 0 ; i < [firstArr count] ; i++)
    {
        int k = [[firstArr objectAtIndex:i] intValue];
        sum1 += k;
    }
    
    int sum2 = 0;
    for(int i = 0 ; i < [secondArr count] ; i++)
    {
        int k = [[secondArr objectAtIndex:i] intValue];
        sum2 += k;
    }*/
    return sum1 - sum2;
}

@end
