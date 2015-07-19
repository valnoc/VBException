//
//  VBInvalidClassException.h
//  VBExceptionExample
//
//  Created by Valeriy Bezuglyy on 19/07/15.
//  Copyright (c) 2015 Valeriy Bezuglyy. All rights reserved.
//

#import "VBException.h"

/**
 *  Throw VBInvalidClassException when instances of invalid class were passed in code. For example, when array is allowed to contain instances of only one concrete class.
 */
@interface VBInvalidClassException : VBException

@end
