//
// Calculator.m
// Calculator
//
// Created by Alexander on 27.02.14.
// Copyright (c) 2014 Alexander. All rights reserved.
//

#import "Calculator.h"

 @implementation Calculator
- (int)sumA :(int)a andB :(int)b{
    return a+b;
}
- (int)divA:(int)a toB:(int)b{
    return a/b;
}

- (int)sumArray:(NSArray*)arr{
    
    int count = [arr count];
    NSInteger sum = 0;
    for (int i = 0; i < count; i++) {
        sum += [[arr objectAtIndex:i] integerValue];
    }
    return sum;
}

- (int)subtractSumFirstArray:(NSArray*)firstArr withSecondArr:(NSArray*)secondArr{
    
    int count1 = [firstArr count];
    NSInteger sum1 = 0;
    for (int i = 0; i < count1; i++) {
        sum1 += [[firstArr objectAtIndex:i] integerValue];
    }
    
    int count2 = [secondArr count];
    NSInteger sum2 = 0;
    for (int i = 0; i < count2; i++) {
        sum2 += [[secondArr objectAtIndex:i] integerValue];
    }
    return sum1-sum2;
}

@end
