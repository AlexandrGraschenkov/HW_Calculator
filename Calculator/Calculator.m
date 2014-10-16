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
  return a + b;
}

- (int)divA:(int)a toB:(int)b
{
  if(b == 0){
    return b;
  }
  return a/b;
}

- (int)sumArray:(NSArray*)arr
{
  int sum = 0;

  for (int i = 0; i < [arr count]; i++) {
  sum += [[arr objectAtIndex:i] integerValue];
}
  return sum;
}

  - (int)subtractSumFirstArray:(NSArray*)firstArr withSecondArr:(NSArray*)secondArr
{
  return [self sumArray:firstArr] - [self sumArray:secondArr];
}

@end
