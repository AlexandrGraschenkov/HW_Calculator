//
//  main.m
//  Calculator
//
//  Created by Alexander on 27.02.14.
//  Copyright (c) 2014 Alexander. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "Calculator.h"

int main(int argc, char * argv[])
{
    Calculator *calc = [Calculator new];
    NSArray *array1 = [[NSArray alloc]initWithObjects: @0, @1, @2, @3, @4, nil];
    NSArray *array2 = [[NSArray alloc]initWithObjects: @5, @6, @7, @8, @9, nil];
    NSLog(@"%d", [calc sumA:5 andB:5]);
    NSLog(@"%d", [calc divA:10 toB:2]);
    NSLog(@"%d", [calc sumArray:array1]);
    NSLog(@"%d", [calc subtractSumFirstArray:array1 withSecondArr:array2]);
    
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
