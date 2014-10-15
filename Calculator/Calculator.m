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
    return a+b;
}


- (int)divA:(int)a toB:(int)b{
    return a/b;
}


- (int)sumArray:(NSArray*)arr{
    int sum = 0;
    for(NSNumber *i in arr){
        sum = sum+[i intValue];
    }
    return sum;
}

- (int)subtractSumFirstArray:(NSArray*)firstArr withSecondArr:(NSArray*)secondArr{
    int sumOfFirstArr = 0;
    int sumOfSecondArr = 0;
    for(NSNumber *i in firstArr){
        sumOfFirstArr += [i intValue];
    }
    for(NSNumber *i in secondArr){
        sumOfSecondArr += [i intValue];
    }
    return sumOfFirstArr - sumOfSecondArr;
}

@end
