//
//    The MIT License (MIT)
//
//    Copyright (c) 2015 Valeriy Bezuglyy.
//
//    Permission is hereby granted, free of charge, to any person obtaining a copy
//    of this software and associated documentation files (the "Software"), to deal
//    in the Software without restriction, including without limitation the rights
//    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//    copies of the Software, and to permit persons to whom the Software is
//    furnished to do so, subject to the following conditions:
//
//    The above copyright notice and this permission notice shall be included in all
//    copies or substantial portions of the Software.
//
//    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//    SOFTWARE.
//

#import <Foundation/Foundation.h>

/**
 *  VBException is a base class for your own exceptions. It adds useful class methods for fast exception instance creation.
 */
@interface VBException : NSException

/**
 *  Creates exception. This method is meant to be the main one for exception creation.
 *
 *  Calls @code exceptionWithReason:userInfo: @endcode with nil values.
 *
 *  Subclasses can implement this method and call one of "exceptionWith.." methods using appropriate arguments.
 *
 *  @return The created exception object or nil if the object couldn't be created.
 */
+ (instancetype) exception;

/**
 *  Creates exception with reason.
 *
 *  @param reason A human-readable message with exception reason.
 *
 *  @return The created exception object or nil if the object couldn't be created.
 */
+ (instancetype) exceptionWithReason:(NSString*)reason;

/**
 *  Creates exception with userInfo.
 *
 *  @param userInfo User-defined exception information.
 *
 *  @return The created exception object or nil if the object couldn't be created.
 */
+ (instancetype) exceptionWithUserInfo:(NSDictionary*)userInfo;

/**
 *  Creates exception with reason and userInfo. 
 *  Uses @code NSStringFromClass([self class]) @endcode as exception name.
 *
 *  Calls designated initializer.
 *
 *  @param reason A human-readable message with exception reason.
 *  @param userInfo User-defined exception information.
 *
 *  @return The created exception object or nil if the object couldn't be created.
 */
+ (instancetype) exceptionWithReason:(NSString*)reason
                            userInfo:(NSDictionary*)userInfo;

@end
