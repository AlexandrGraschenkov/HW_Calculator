//
//  Calculator.m
//  Calculator
//
//  Created by Alexander on 27.02.14.
//  Copyright (c) 2014 Alexander. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator

- (int)sumA:(int)a andB:(int)b; {
    return a+b;
}
- (int)divA:(int)a toB:(int)b; {
    if (b == 0) {
        NSLog(@"%s", "error");
        return nil;
    } else {
        return a/b;
    }
}
- (int)sumArray:(NSArray*)arr; {
    int summa = 0;
    for (NSNumber * n in arr) {
        summa+=[n doubleValue];
    }
    return summa;
}
- (int)subtractSumFirstArray:(NSArray*)firstArr withSecondArr:(NSArray*)secondArr;{
    int summa1 = 0;
    int summa2 = 0;
    for (NSNumber * n in firstArr) {
        summa1 += [n doubleValue];
    }
    for (NSNumber * n in secondArr) {
        summa2 += [n doubleValue];
    }
    return summa1 - summa2;
}

@end