//
//  VBNilValueException.m
//  VBExceptionExample
//
//  Created by Valeriy Bezuglyy on 19/07/15.
//  Copyright (c) 2015 Valeriy Bezuglyy. All rights reserved.
//

#import "VBNilValueException.h"

@implementation VBNilValueException

+ (NSString *) reasonWithUserInfo:(NSDictionary *)userInfo {
    return @"Value was not set.";
}

@end
