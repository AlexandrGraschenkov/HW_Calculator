//
//  ViewController.m
//  Calculator
//
//  Created by Alexander on 27.02.14.
//  Copyright (c) 2014 Alexander. All rights reserved.
//

#import "ViewController.h"
#import "Calculator.h"

@interface ViewController ()
{}
@property (nonatomic, weak) IBOutlet UILabel *lab;
@property (nonatomic, weak) IBOutlet UIImageView *imgView;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    if([self isAllMethodsAreImplemented]){
        int countNotPassingTests = [self countNotPassingTests];
        if(countNotPassingTests == 0){
            NSArray *successTextArr = @[@"Молодец!", @"Ты справился!", @"Тесты прошли успешно"];
            self.lab.text = successTextArr[arc4random() % successTextArr.count];
            self.imgView.image = [UIImage imageNamed:@"SuccessHUD"];
        } else {
            self.lab.text = [NSString stringWithFormat:@"К сожалению %d функции работают неправильно", countNotPassingTests];
            self.imgView.image = [UIImage imageNamed:@"ErrorHUD"];
        }
    } else {
        self.lab.text = @"Не все методы реализованы";
        self.imgView.image = [UIImage imageNamed:@"ErrorHUD"];
    }
    
}

- (int)countNotPassingTests
{
    Calculator *calc = [[Calculator alloc] init];
    BOOL simpleSumWorks = YES;
    simpleSumWorks &= [calc sumA:3 andB:5] == 8;
    simpleSumWorks &= [calc sumA:-2 andB:4] == 2;
    
    BOOL divWorks = YES;
    divWorks &= [calc divA:100 toB:2] == 50;
    divWorks &= [calc divA:-5 toB:2] == -2;
    
    BOOL sumArrWorks = YES;
    sumArrWorks &= [calc sumArray:@[@1, @2, @3]] == 6;
    sumArrWorks &= [calc sumArray:@[@1, @-2, @3, @2]] == 4;
    
    BOOL substractArrWorks = YES;
    substractArrWorks &= [calc subtractSumFirstArray:@[@1, @2] withSecondArr:@[@2, @3]] == -2;
    substractArrWorks &= [calc subtractSumFirstArray:@[@1, @2] withSecondArr:@[@-2, @3]] == 2;
    
    return !simpleSumWorks + !divWorks + !sumArrWorks + !substractArrWorks;
}

- (BOOL)isAllMethodsAreImplemented
{
    Calculator *calc = [[Calculator alloc] init];
    BOOL result = YES;
    result &= [calc respondsToSelector:@selector(sumA:andB:)];
    result &= [calc respondsToSelector:@selector(sumArray:)];
    result &= [calc respondsToSelector:@selector(divA:toB:)];
    result &= [calc respondsToSelector:@selector(subtractSumFirstArray:withSecondArr:)];
    return result;
}

@end
