//
//  JenkinsSampleTests.m
//  JenkinsSampleTests
//
//  Created by 大島 雅人 on 2014/04/13.
//
//

#import <XCTest/XCTest.h>
#import "Calculator.h"

@interface JenkinsSampleTests : XCTestCase

@end

@implementation JenkinsSampleTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testSum
{
    Calculator *calculator = [[Calculator alloc] init];
    
    NSArray *numbers = @[
                         [NSDecimalNumber decimalNumberWithString:@"5"],
                         [NSDecimalNumber decimalNumberWithString:@"8"],
                         [NSDecimalNumber decimalNumberWithString:@"12"]
                         ];
    NSDecimalNumber *sum = [calculator sum:numbers];
    NSDecimalNumber *expect = [NSDecimalNumber decimalNumberWithString:@"25"];

    XCTAssertEqualObjects(sum, expect, @"整数の足し算が間違っている");
}

@end
