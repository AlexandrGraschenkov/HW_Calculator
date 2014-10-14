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
    return a + b;
}

- (int)divA:(int)a toB:(int)b{
    return a / b;
}

- (int)sumArray:(NSArray*)arr{
    int sum = 0;
    
    for (NSNumber *num in arr)
        sum += [num intValue];
    
    return sum;
}

- (int)subtractSumFirstArray:(NSArray*)firstArr withSecondArr:(NSArray*)secondArr{
    int s = 0;
    
    for (NSNumber *num in firstArr)
        s += [num intValue];
    
    for (NSNumber *num in secondArr)
        s -= [num intValue];
    
    return s;
}
@end
