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

- (int)sumArray:(NSArray*)arr
{
    NSInteger summ = 0;
    for(NSNumber *i in arr)
        summ += [i intValue];
    return summ;
}

- (int)subtractSumFirstArray:(NSArray*)firstArr withSecondArr:(NSArray*)secondArr
{
    NSInteger fArr = 0;
    NSInteger sArr = 0;
    for(NSNumber *i in firstArr)
        fArr += [i intValue];
    for (NSNumber *i in secondArr){
        sArr += [i intValue];
    }
    return fArr - sArr;
    
    
}

@end
