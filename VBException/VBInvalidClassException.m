//
//  VBInvalidClassException.m
//  VBExceptionExample
//
//  Created by Valeriy Bezuglyy on 19/07/15.
//  Copyright (c) 2015 Valeriy Bezuglyy. All rights reserved.
//

#import "VBInvalidClassException.h"

@implementation VBInvalidClassException

+ (NSString *) reasonWithUserInfo:(NSDictionary *)userInfo {
    return @"Invalid class.";
}

@end
