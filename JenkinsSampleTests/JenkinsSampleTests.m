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

@property (nonatomic) Calculator *calculator;

@end

@implementation JenkinsSampleTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    self.calculator = [[Calculator alloc] init];
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testSum
{
    // 5+8+12=25
    NSArray *numbers = @[
                         [NSDecimalNumber decimalNumberWithString:@"5"],
                         [NSDecimalNumber decimalNumberWithString:@"8"],
                         [NSDecimalNumber decimalNumberWithString:@"12"]
                         ];
    NSDecimalNumber *sum = [self.calculator sum:numbers];
    NSDecimalNumber *expect = [NSDecimalNumber decimalNumberWithString:@"25"];

    XCTAssertEqualObjects(sum, expect, @"整数の足し算が間違っている");
}

- (void)testMul
{
    // 5*8*12=480
    NSArray *numbers = @[
                         [NSDecimalNumber decimalNumberWithString:@"5"],
                         [NSDecimalNumber decimalNumberWithString:@"8"],
                         [NSDecimalNumber decimalNumberWithString:@"12"]
                         ];
    NSDecimalNumber *sum = [self.calculator mul:numbers];
    NSDecimalNumber *expect = [NSDecimalNumber decimalNumberWithString:@"480"];
    
    XCTAssertEqualObjects(sum, expect, @"整数のかけ算が間違っている");
}

- (void)testClassConstant
{
    NSArray *keycodes = Calculator.keycodes;
    NSArray *expect   = @[ @"0", @"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9" ];
    XCTAssertEqualObjects(keycodes, expect, @"クラス定数が取得できない");
}

@end
