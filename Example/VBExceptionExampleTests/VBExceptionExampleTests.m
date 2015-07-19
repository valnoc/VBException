//
//  VBExceptionExampleTests.m
//  VBExceptionExampleTests
//
//  Created by Valeriy Bezuglyy on 29/01/15.
//  Copyright (c) 2015 Valeriy Bezuglyy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

#import "VBNotImplementedException.h"

@interface VBExceptionExampleTests : XCTestCase

@end

@implementation VBExceptionExampleTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    XCTAssert(YES, @"Pass");
    VBNotImplementedException* exception = [VBNotImplementedException exception];
    XCTAssert(exception != nil);
    XCTAssert([exception.name isEqualToString:NSStringFromClass([VBNotImplementedException class])]);
    XCTAssert([exception.reason isEqualToString:@"This code is to be implemented later."]);
    
    void(^tmpThrows)() = ^void() {
        @throw exception;
    };
    XCTAssertThrowsSpecific(tmpThrows(), VBNotImplementedException);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
