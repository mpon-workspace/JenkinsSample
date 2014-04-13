//
//  Calculator.m
//  JenkinsSample
//
//  Created by 大島 雅人 on 2014/04/14.
//
//

#import "Calculator.h"

@implementation Calculator

- (NSDecimalNumber *)sum:(NSArray *)numbers
{
    __block NSDecimalNumber *num = [NSDecimalNumber zero];
    
    for (NSDecimalNumber *n in numbers) {
        num = [num decimalNumberByAdding:n];
    }
        
    return num;
}

@end
