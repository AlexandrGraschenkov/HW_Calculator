//
//  Calculator.m
//  Calculator
//
//  Created by Alexander on 27.02.14.
//  Copyright (c) 2014 Alexander. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator

-(int) sumA:(int)a andB:(int)b
{
    return a+b;
}

-(int) divA:(int)a toB:(int)b
{
    return a/b;
}

-(int) sumArray:(NSArray *)arr
{
    int sum=0;
    for (int i=0; i<[arr count]; i++) {
        int f = [(NSNumber *)[arr objectAtIndex: i]integerValue];
        sum = sum + f;
    }
    return sum;
}

-(int)subtractSumFirstArray:(NSArray *)firstArr withSecondArr:(NSArray *)secondArr
{
    int l = [firstArr count];
    int n = [secondArr count];
    //
    //    NSMutableArray *marray = [[NSMutableArray alloc] init];
    int sumone=0, sumtwo=0;
    
    for (int i = 0; i < l; i++)
    {
        sumone = sumone + [(NSNumber *)[firstArr objectAtIndex:i]integerValue];
    }
    
    for (int i = 0; i < n; i++)
    {
        sumtwo = sumtwo + [(NSNumber *)[secondArr objectAtIndex:i]integerValue];
    }
    
    return sumone - sumtwo;
}
@end
