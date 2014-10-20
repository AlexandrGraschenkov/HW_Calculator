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
    if (b!=0) {
        return a/b;
    } else {
        return nil;
    }
    
}
- (int)sumArray:(NSArray*)arr{
    int summa =0;
    for (NSNumber * n in arr) {
        summa+=[n doubleValue];
    }
    //NSNumber * sum = [arr valueForKeyPath:@"@sum.self"];
    //summa = [sum integerValue];
    return summa;
}
- (int)subtractSumFirstArray:(NSArray*)firstArr withSecondArr:(NSArray*)secondArr{
    int firstSum = 0;
    int secondSum =0;
    int result=0;
    for (NSNumber * n in firstArr){
        firstSum+=[n doubleValue];
    }
    for (NSNumber * m in secondArr){
        secondSum+=[m doubleValue];
    }
    return result=firstSum-secondSum;
}
@end
