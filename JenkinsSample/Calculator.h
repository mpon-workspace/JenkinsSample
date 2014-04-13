//
//  Calculator.h
//  JenkinsSample
//
//  Created by 大島 雅人 on 2014/04/14.
//
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject

- (NSDecimalNumber *)sum:(NSArray *)numbers;
- (NSDecimalNumber *)mul:(NSArray *)numbers;

@end
