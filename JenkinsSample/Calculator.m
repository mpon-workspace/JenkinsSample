//
//  Calculator.m
//  JenkinsSample
//
//  Created by 大島 雅人 on 2014/04/14.
//
//

#import "Calculator.h"

@implementation Calculator

+ (NSArray *)keycodes
{
    static NSArray *keycodes;
    static dispatch_once_t onceToken;
    dispatch_once (&onceToken, ^{
        keycodes = @[ @"0", @"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9" ];
    });
    return keycodes;
}

- (NSDecimalNumber *)sum:(NSArray *)numbers
{
    __block NSDecimalNumber *num = [NSDecimalNumber zero];
    
    for (NSDecimalNumber *n in numbers) {
        num = [num decimalNumberByAdding:n];
    }
        
    return num;
}

- (NSDecimalNumber *)mul:(NSArray *)numbers
{
    __block NSDecimalNumber *num = [NSDecimalNumber one];
    
    for (NSDecimalNumber *n in numbers) {
        num = [num decimalNumberByMultiplyingBy:n];
    }
    
    return num;
}

@end
