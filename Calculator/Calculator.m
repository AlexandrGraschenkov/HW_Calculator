//
// Calculator.m
// Calculator
//
// Created by Alexander on 27.02.14.
// Copyright (c) 2014 Alexander. All rights reserved.
//

#import "Calculator.h"

Имплементаторы БРС Calculator
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

int count = [firstArr count];
NSInteger sum1 = 0;
for (int i = 0; i < count; i++) {
sum1 += [[arr objectAtIndex:i] integerValue];
}

int count = [secondArr count];
NSInteger sum2 = 0;
for (int i = 0; i < count; i++) {
sum2 += [[arr objectAtIndex:i] integerValue];
}
return sum1-sum2;
}

@end
