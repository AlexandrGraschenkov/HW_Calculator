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
    int c = a + b;
    //    NSLog(@"a %d",a);
    //    NSLog(@"b %d",b);
    //    NSLog(@"c %d",c);
    return c;
}

- (int)divA:(int)a toB:(int)b
{
    int c = a / b;
    //    NSLog(@"a %d",a);
    //    NSLog(@"b %d",b);
    //    NSLog(@"c %d",c);
    return c;
}

- (int)sumArray:(NSArray*)arr
{
    int a = [arr count];
    int sum = 0;
    for(int i = 0; i < a; i++) {
        NSString *b = [arr objectAtIndex:i];
//        NSLog(@"%@",b);
        int q = [b intValue];
        sum = sum + q;
    }
    return sum;
}

- (int)subtractSumFirstArray:(NSArray*)firstArr withSecondArr:(NSArray*)secondArr
{
    int a = [firstArr count];
    int sumA = 0;
    for(int i = 0; i < a; i++) {
        NSString *e = [firstArr objectAtIndex:i];
//        NSLog(@"%@",e);
        int q = [e intValue];
        sumA = sumA + q;
    }
    int b = [firstArr count];
    int sumB = 0;
    for(int i = 0; i < b; i++) {
        NSString *e = [secondArr objectAtIndex:i];
//        NSLog(@"%@",e);
        int q = [e intValue];
        sumB = sumB + q;
    }
    return sumA-sumB;
}
@end
