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
    if (b != 0){
        return a / b;
    } else {
        return @"Нельзя делить на ноль!";
    }
}

- (int)sumArray:(NSArray*)arr
{
    int sumArray = 0;
    
    for (int i = 0; i < [arr count]; i++){
        sumArray += [[arr objectAtIndex: i]integerValue];
    }
    
    return sumArray;
}

- (int)subtractSumFirstArray:(NSArray*)firstArr withSecondArr:(NSArray*)secondArr
{
    int sumFirstArray = 0, sumSecondArray = 0;
    
    for (int i = 0; i < [firstArr count]; i++){
        sumFirstArray += [[firstArr objectAtIndex: i]integerValue];
    }
    
    for (int i = 0; i < [secondArr count]; i++){
        sumSecondArray += [[secondArr objectAtIndex: i]integerValue];
    }
    
    return sumFirstArray - sumSecondArray;
}

@end
