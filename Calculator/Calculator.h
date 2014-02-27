//
//  Calculator.h
//  Calculator
//
//  Created by Alexander on 27.02.14.
//  Copyright (c) 2014 Alexander. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CalculatorProtocol <NSObject>

- (int)sumA:(int)a andB:(int)b;
- (int)divA:(int)a toB:(int)b;
- (int)sumArray:(NSArray*)arr;
- (int)subtractSumFirstArray:(NSArray*)firstArr withSecondArr:(NSArray*)secondArr;

@end

@interface Calculator : NSObject <CalculatorProtocol>

@end
