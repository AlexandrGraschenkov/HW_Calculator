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
    int sum = a+b;
    return sum;
}
- (int)divA:(int)a toB:(int)b{
    int div = a/b;
    return div;
}
- (int)sumArray:(NSArray*)arr{
    int sumA = 0;
    for (int i = 0; i<arr.count; i++){
        sumA += [(NSNumber *)[arr objectAtIndex:i]integerValue];
        }
    return sumA;
}
- (int)subtractSumFirstArray:(NSArray*)firstArr withSecondArr:(NSArray*)secondArr{
    int sumA=0;
    int sumB = 0;
    
    for (int i = 0; i<firstArr.count; i++){
        sumA += [(NSNumber *)[firstArr objectAtIndex:i]integerValue];
    }
    for (int i = 0; i<secondArr.count; i++){
        sumB += [(NSNumber *)[secondArr objectAtIndex:i]integerValue];
    }
    int subsAB = sumA - sumB;
    
    return subsAB;
}


@end
