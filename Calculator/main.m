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
    Calculator *calc = [[Calculator alloc] init];
    NSArray *a = [[NSArray alloc] initWithObjects:@1, @2, @3, @4, nil];
    NSArray *b = [[NSArray alloc] initWithObjects:@1, @2, @3, nil];
    NSLog(@"%d", [calc sumA:10 andB:20]);
    NSLog(@"%d", [calc divA:30 toB:10]);
    NSLog(@"%d", [calc sumArray:a]);
    NSLog(@"%d", [calc subtractSumFirstArray:a withSecondArr:b]);
    
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
