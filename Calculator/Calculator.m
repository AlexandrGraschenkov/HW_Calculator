//
//  Calculator.m
//  Calculator
//
//  Created by Alexander on 27.02.14.
//  Copyright (c) 2014 Alexander. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator

- (int)sumA:(int)a andB:(int)b {
    return a+b;
}
- (int)divA:(int)a toB:(int)b {
    return a/b;
}
- (int)sumArray:(NSArray*)arr {
    int sum = 0;
    for (int i = 0; i < [arr count]; i++) {
        sum += [[arr objectAtIndex:i] integerValue];
    }
    return sum;
}
- (int)subtractSumFirstArray:(NSArray*)firstArr withSecondArr:(NSArray*)secondArr {
    int sumFirst = 0;
    int sumSecond = 0;
    
    for (int i = 0; i < [firstArr count]; i++) {
        sumFirst += [[firstArr objectAtIndex:i] integerValue];
    }
    
    for (int i = 0; i < [secondArr count]; i++) {
        sumSecond += [[secondArr objectAtIndex:i] integerValue];
    }
    
    return sumFirst - sumSecond;
}

@end
