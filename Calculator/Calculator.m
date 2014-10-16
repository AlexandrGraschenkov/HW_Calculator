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
    int summ = 0;
    
    for (NSNumber *num in arr)
        summ += [num intValue];
    
    return summ;
}

- (int)subtractSumFirstArray:(NSArray*)firstArr withSecondArr:(NSArray*)secondArr{
    return (int)sumArray:(NSArray*)firstArr-(int)sumArray:(NSArray*)secondArr;
}
@end
