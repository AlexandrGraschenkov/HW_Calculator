//
//  Calculator.m
//  Calculator
//
//  Created by Alexander on 27.02.14.
//  Copyright (c) 2014 Alexander. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator

-(int)sumA:(int)a andB:(int)b
{
    return a+b;
}


-(int)divA:(int)a toB:(int)b
{
    return (int)a/b;
}


- (int)sumArray:(NSArray*)arr
{
    int sum = 0;
    
    NSArray *array=[[NSArray alloc] initWithArray:arr];
    
    for (int i=0; i<array.count; i++)
    {
        sum = sum+[array[i] integerValue];
    }
    return sum;
}


- (int)subtractSumFirstArray:(NSArray*)firstArr withSecondArr:(NSArray*)secondArr
{
    int firstSum=0;
    int secondSum=0;
    
    NSArray *firstArray = [[NSArray alloc] initWithArray:firstArr];
    NSArray *secondArray = [[NSArray alloc] initWithArray:secondArr];
    
    for (int i=0; i<firstArray.count;i++)
    {
        firstSum += [firstArray[i] integerValue];
    }
    for (int i=0; i< secondArray.count;i++)
    {
        secondSum = secondSum + [secondArray[i] integerValue];
    }
    
    return firstSum-secondSum;
}

@end
